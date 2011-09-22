//
//  RSFileConnection.m
//  Rackspace
//
//  Created by Matt Newberry on 6/27/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import "RSFileConnection.h"
#import "RSAccount.h"

@implementation RSFileConnection

@synthesize rootPath = _rootPath;

- (id) init{
    
    if(self = [super init]){
        
        self.rootPath = $S(@"%@/fixtures/accounts/%@", [[NSBundle bundleForClass:[self class]] bundlePath], [RSAccount activeAccount].username);
    }
    
    return self;
}

- (void) send:(CKRequest *) request{
    
    [self sendSyncronously:request];
}

- (CKResult *) sendSyncronously:(CKRequest *) request{
    
//    NSError *error;
//    NSString *resourcePath = [[NSMutableString stringWithString:request.remotePath] stringByReplacingOccurrencesOfString:[CKManager sharedManager].baseURL withString:@""];
//    
//    NSLog(@"******************* %@", resourcePath);
//    
//    [_responseData appendData:[[NSFileManager defaultManager] contentsAtPath:$S(@"%@/%@", _rootPath, resourcePath)]];
//    [[CKManager sharedManager] parse:_responseData];
//    
//    CKResult *result = [[[CKResult alloc] initWithRequest:request response:_responseData httpResponse:nil error:&error] autorelease];
//    
//    if(request.completionBlock != nil)
//		request.completionBlock(result);
    
    return nil;
}

@end
