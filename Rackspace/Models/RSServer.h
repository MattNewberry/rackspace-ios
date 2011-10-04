#import "_RSServer.h"

@interface RSServer : _RSServer {}
// Custom logic goes here.

+ (void)get;

- (BOOL)softReboot;
- (BOOL)hardReboot;

- (BOOL)softReboot:(CKResult **)result;

@end
