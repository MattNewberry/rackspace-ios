#import "RSImage.h"
#import "RSServer.h"
#import "CKRecord+Rackspace.h"

@implementation RSImage

+ (void)initialize {
    [RSImage mapToRemotePath:@"images/detail" forRequestMethod:CKRequestMethodGET];
}

+ (CKRequest *)requestForGet {
    
    CKRequest *request = [super requestForGet];    
    [request addRackspaceCacheBuster];
    [request addRackspaceHeaders];    
    return request;    
    
}

- (CKRequest *)requestForPost {

    CKRequest *request = [CKRequest requestWithMap:[self mapForRequestMethod:CKRequestMethodPOST]];    
    [request setBodyWithJSONDict:$D([[self.servers anyObject] id], @"serverId", self.name, @"name")];
    return request;
    
}

- (NSString *)description {
    return self.name;
}

@end
