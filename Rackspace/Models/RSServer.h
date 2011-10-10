#import "_RSServer.h"

@interface RSServer : _RSServer {}
// Custom logic goes here.

+ (void)get;


- (void)softRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;
- (void)hardRebootWithSuccess:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;

- (void)rebuildWithImage:(RSImage *)image success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;
- (void)resizeWithFlavor:(RSFlavor *)flavor success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;
- (void)confirmResize:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;
- (void)revertResize:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;

- (void)rename:(NSString *)name success:(CKBasicBlock)successBlock failure:(void (^)(CKResult *result))failureBlock;

@end
