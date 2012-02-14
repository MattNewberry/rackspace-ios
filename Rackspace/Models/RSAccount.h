#import "_RSAccount.h"

// extra imports here to reduce the number of imports you need in other classes
#import "RSServer.h"
#import "RSFlavor.h"
#import "RSImage.h"
#import "RSServerAddress.h"
#import "RSServerBackupSchedule.h"
#import "RSServerMetaData.h"
#import "RSLoadBalancer.h"
#import "RSNode.h"
#import "RSProvider.h"
#import "RSSharedIPGroup.h"
#import "RSVirtualIP.h"

@interface RSAccount : _RSAccount {}

+ (RSAccount *)activeAccount;

- (void)activate;
- (BOOL)authenticate;


@end
