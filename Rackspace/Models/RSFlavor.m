#import "RSFlavor.h"
#import "CKRecord+Rackspace.h"

@implementation RSFlavor

+ (void)initialize {
    [RSFlavor mapToRemotePath:@"flavors/detail" forRequestMethod:CKRequestMethodGET];
}

+ (CKRequest *)requestForGet {
    return [self serversAPIRequestForGet];
}

- (NSString *)description {
    return $S(@"%i MB RAM, %i GB Disk", [self.ram intValue], [self.disk intValue]);
}

@end
