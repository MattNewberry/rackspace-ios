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
    //[request.parameters setObject:[[NSDate date] description] forKey:@"now"];
    
    [request addHeaders:[NSDictionary dictionaryWithObject:[[RSAccount activeAccount] api_auth_token] forKey:@"X-Auth-Token"]];
    
    NSLog(@"map: %@", [self mapForRequestMethod:CKRequestMethodGET]);
    NSLog(@"request: %@", request);
    NSLog(@"url: %@", request.remoteURL);
    NSLog(@"headers: %@", request.headers);
    
    return request;    
}

+ (void)get {
    
    [RSServer get:nil completionBlock:nil errorBlock:^(CKResult *result) {
        
        NSLog(@"error: %@", [result.error description]);
        
    }];
    
}

+ (NSFetchRequest *)fetchRequest {

    NSFetchRequest *fetch = [super fetchRequest];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"account = %@", [RSAccount activeAccount]];
    fetch.predicate = predicate;
    
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
