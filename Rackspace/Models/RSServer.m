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


@end
