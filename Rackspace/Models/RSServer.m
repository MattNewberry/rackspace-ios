#import "RSServer.h"
#import "RSAccount.h"
#import "RSFlavor.h"
#import "RSImage.h"
#import "RSNSURLConnection.h"

#define kRebootSoft 0
#define kRebootHard 1

@implementation RSServer

+ (void)initialize {
    [RSServer mapToRemotePath:@"servers/detail" forRequestMethod:CKRequestMethodGET];
}

+ (CKRequest *)requestForGet{    
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
    request.method = CKRequestMethodPOST;
    [request addHeaders:$D([[RSAccount activeAccount] api_auth_token], @"X-Auth-Token",
                           @"application/json", @"Content-Type")];
    return request;
    
}

- (void)send:(CKRequest *)request success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {

    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        
        CKResult *result = [request sendSyncronously];
        if ([result isSuccess]) {
            successBlock();            
        } else {            
            failureBlock(result);            
        }
        
    });
    
}

- (void)sendActionRequestWithJSON:(NSDictionary *)json  success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {

    CKRequest *request = [self actionRequest];
    [request setBodyWithJSONDict:json];
    [self send:request success:successBlock failure:failureBlock];
    
}

- (void)sendPutRequestWithJSON:(NSDictionary *)json  success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    CKRequest *request = [CKRequest requestWithMap:[self mapForRequestMethod:CKRequestMethodPUT]];
    [request setBodyWithJSONDict:json];
    [self send:request success:successBlock failure:failureBlock];
    
}

- (void)softRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {

    [self sendActionRequestWithJSON:$D($D(@"SOFT", @"type"), @"reboot") success:successBlock failure:failureBlock];
    
}

- (void)hardRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    [self sendActionRequestWithJSON:$D($D(@"HARD", @"type"), @"reboot") success:successBlock failure:failureBlock];
    
}

- (void)rebuildWithImage:(RSImage *)image success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {

    [self sendActionRequestWithJSON:$D($D(image.id, @"imageId"), @"rebuild") success:successBlock failure:failureBlock];
    
}

- (void)resizeWithFlavor:(RSFlavor *)flavor success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    [self sendActionRequestWithJSON:$D($D(flavor.id, @"flavorId"), @"resize") success:successBlock failure:failureBlock];
    
}

- (void)confirmResize:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    [self sendActionRequestWithJSON:$D([NSNull null], @"confirmResize") success:successBlock failure:failureBlock];
    
}

- (void)revertResize:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    [self sendActionRequestWithJSON:$D([NSNull null], @"revertResize") success:successBlock failure:failureBlock];
    
}

- (void)rename:(NSString *)name success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
    
    [self sendPutRequestWithJSON:$D($D(name, @"name"), @"server") success:successBlock failure:failureBlock];
    
}

- (void)updateAdminPassword:(NSString *)password success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock {
  
    [self sendPutRequestWithJSON:$D($D(password, @"adminPass"), @"server") success:successBlock failure:failureBlock];

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
