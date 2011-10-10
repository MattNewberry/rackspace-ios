#import "RSImage.h"
#import "RSServer.h"
#import "CKRecord+Rackspace.h"

@implementation RSImage

+ (void)initialize {
    [RSImage mapToRemotePath:@"images/detail" forRequestMethod:CKRequestMethodGET];
}

+ (CKRequest *)requestForGet {
    return [self serversAPIRequestForGet];
}

//+ (CKRequest *)requestForPost {
//
//    CKRequest *request = [CKRequest requestWithMap:[self mapForRequestMethod:CKRequestMethodPOST]];
//    
////    [request setBodyWithJSONDict:<#(NSDictionary *)#>
//    
//    
//    request.body = [self serialize];
//    return request;
//    
//}

- (NSString *)description {
    return $S(@"Image %@: %@", self.id, self.name);
}

@end
