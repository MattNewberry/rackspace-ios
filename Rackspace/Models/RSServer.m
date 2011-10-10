#import "RSServer.h"
#import "RSAccount.h"
#import "RSFlavor.h"
#import "RSImage.h"
#import "RSNSURLConnection.h"

#define kRebootSoft 0
#define kRebootHard 1

typedef enum RSServerRebootType {
    RSServerRebootTypeSoft,
    RSServerRebootTypeHard
} RSServerRebootType;

@implementation RSServer

+ (void)initialize {
    [RSServer mapToRemotePath:@"servers/detail" forRequestMethod:CKRequestMethodGET];
}

+ (CKRequest *) requestForGet{    
    CKRequest *request = [super requestForGet];
    
    // cache busting
    [request.parameters setObject:[[NSDate date] description] forKey:@"now"];
    [request addHeaders:$D([[RSAccount activeAccount] api_auth_token], @"X-Auth-Token",
                           @"application/json", @"Content-Type")];
    
    return request;    
}

+ (NSPredicate *)predicate {
    return [NSPredicate predicateWithFormat:@"account = %@", [RSAccount activeAccount]];
}

- (CKRequest *)actionRequest {

    // TODO: self.id needs to be a string instead of an int
    CKRequest *request = [CKRequest requestWithRemotePath:$S(@"/servers/%@/action", self.id)];    
    NSLog(@"request url: %@", request.remoteURL);
    request.method = CKRequestMethodPOST;
    [request addHeaders:$D([[RSAccount activeAccount] api_auth_token], @"X-Auth-Token",
                           @"application/json", @"Content-Type")];
    return request;
    
}

- (void)reboot:(RSServerRebootType)rebootType success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {

    CKRequest *request = [self actionRequest];

    // set up the request body
    NSString *type = rebootType == RSServerRebootTypeSoft ? @"SOFT" : @"HARD";
    NSDictionary *dict = $D($D(type, @"type"), @"reboot");
    [request setBody:[NSJSONSerialization dataWithJSONObject:dict options:0 error:nil]];
    
    // fire off the request
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{

        __autoreleasing CKResult *result = [request sendSyncronously];
        if (result.responseCode == 202) {
            
            successBlock();
            
        } else {
            
            failureBlock(result);
            
        }
        
    });
    
}

- (void)softRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    [self reboot:RSServerRebootTypeSoft success:successBlock failure:failureBlock];
}

- (void)hardRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    [self reboot:RSServerRebootTypeHard success:successBlock failure:failureBlock];
}

+ (void)get {
    
    [RSServer get:nil completionBlock:^(CKResult *result) {
        
        if ([result isSuccess]) {
        
            // We should remove servers that didn't come back in the results.
            // To do this, we need to find the complement to the result set and
            // the set of all servers currently stored in Core Data.

            NSArray *allServers = [RSServer findWithPredicate:[self predicate]];

            NSMutableSet *complementSet = [NSMutableSet setWithArray:allServers];
            NSMutableSet *intersectionSet = [NSMutableSet setWithArray:allServers];
            NSMutableSet *resultsSet = [NSMutableSet setWithArray:result.objects];
            
            [intersectionSet intersectSet:resultsSet];
            [complementSet minusSet:intersectionSet];
                    
            [RSServer removeAllInSet:complementSet];
            [RSServer save];
            
        } else if (result.responseCode == 401) {
            
            // the auth token has expired.  reauthenticate and try this request again
            if ([[RSAccount activeAccount] authenticate]) {
                [self get];
            }
            
        }
        
    } errorBlock:^(CKResult *result) {
        
        NSLog(@"error: %@", [result.error description]);
        
    }];
    
}

+ (NSFetchRequest *)fetchRequest {

    NSFetchRequest *fetch = [super fetchRequest];
    fetch.predicate = [self predicate];    
	return fetch;

}

- (BOOL)save {
    
    self.account = [RSAccount activeAccount];
    return [[self class] save];
    
}

+ (id)create:(id)data {
    
    RSServer *server = [super create:data];
    server.account = [RSAccount activeAccount];
    return server;
    
}

@end
