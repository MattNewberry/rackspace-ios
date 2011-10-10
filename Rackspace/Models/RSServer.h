#import "_RSServer.h"

@interface RSServer : _RSServer {}
// Custom logic goes here.

+ (void)get;

- (void)softRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;
- (void)hardRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;


@end
