#import "RSAccount.h"
#import "RSProvider.h"
#import "RSNSURLConnection.h"

@implementation RSAccount

+ (RSAccount *)activeAccount {
    
    NSArray *result = [RSAccount findWithPredicate:$P(@"active = 1")];

    if ([result count] > 0) {
        return [result objectAtIndex:0];
    }
    
    return nil;
}

+ (BOOL)seedGroup:(NSString *)groupName{
    
    [RSProvider seed];
    
    return [super seedGroup:groupName];
    
    return NO;
}

+ (NSString *) primaryKeyName{
    
    return @"username";
}

- (void)activate {
    
    NSArray *accounts = [RSAccount findWithPredicate:$P(@"active = 1")];
    
    for (RSAccount *account in accounts) {
        
        account.active = [NSNumber numberWithBool:NO];
        [account save];
        
    }
    
    self.active = [NSNumber numberWithBool:YES];
    [self save];
    
    [[CKManager sharedManager] setBaseURL:self.api_server_url];
    
}

- (BOOL)authenticate {
    
    RSNSURLConnection *conn = [[RSNSURLConnection alloc] init];
    conn.account = self;
    
    return [conn authenticate];

}

@end
