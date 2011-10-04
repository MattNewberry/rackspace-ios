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
    
    [request addHeaders:[NSDictionary dictionaryWithObject:[[RSAccount activeAccount] api_auth_token] forKey:@"X-Auth-Token"]];
    
    NSLog(@"map: %@", [self mapForRequestMethod:CKRequestMethodGET]);
    NSLog(@"request: %@", request);
    NSLog(@"url: %@", request.remoteURL);
    NSLog(@"headers: %@", request.headers);
    
    return request;    
}

+ (NSPredicate *)predicate {
    return [NSPredicate predicateWithFormat:@"account = %@", [RSAccount activeAccount]];
}

- (CKRequest *)actionRequest {

    // TODO: self.id needs to be a string instead of an int
    CKRequest *request = [CKRequest requestWithRemotePath:$S(@"/%i/action", self.id)];    
    request.method = CKRequestMethodPOST;
    [request addHeaders:[NSDictionary dictionaryWithObject:[[RSAccount activeAccount] api_auth_token] forKey:@"X-Auth-Token"]];
    return request;
    
}

- (BOOL)reboot:(RSServerRebootType)rebootType result:(CKResult **)result {
    
    CKRequest *request = [self actionRequest];
    NSString *json = $S(@"{ \"reboot\": { \"type\": \"%@\" } }", rebootType == RSServerRebootTypeSoft ? @"SOFT" : @"HARD");
    [request setBody:[json dataUsingEncoding:NSUTF8StringEncoding]];
    
    RSNSURLConnection *connection = [[RSNSURLConnection alloc] init];    
    *result = [connection sendSyncronously:request];
    
    return [*result isSuccess];

}

- (BOOL)softReboot {
    return [self reboot:RSServerRebootTypeSoft result:nil];
}

- (BOOL)softReboot:(CKResult **)result {
    return [self reboot:RSServerRebootTypeSoft result:result];
}

- (BOOL)hardReboot {
    return [self reboot:RSServerRebootTypeHard result:nil];
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
