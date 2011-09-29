#import "_RSAccount.h"

@interface RSAccount : _RSAccount {}

+ (RSAccount *)activeAccount;

- (void)activate;
- (void)authenticate:(CKResultBlock)completionBlock errorBlock:(CKResultBlock)errorBlock;

@end
