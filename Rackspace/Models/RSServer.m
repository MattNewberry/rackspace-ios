#import "RSServer.h"
#import "RSAccount.h"
#import "RSFlavor.h"
#import "RSImage.h"

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

+ (void)get {
    
    [RSServer get:nil completionBlock:^(CKResult *result) {
        
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
