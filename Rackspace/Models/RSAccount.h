#import "_RSAccount.h"

@interface RSAccount : _RSAccount {}

+ (RSAccount *)activeAccount;

- (void)activate;
- (BOOL)authenticate;


@end
