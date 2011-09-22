#import "RSProvider.h"
#import "RSAccount.h"
#import "RSNSURLConnection.h"

@implementation RSProvider

- (BOOL) validate:(NSString *) username password:(NSString *) password{
    
    RSAccount *account = [RSAccount blank];
    account.username = username;
    account.api_key = password;  
    account.provider = self;
    
    RSNSURLConnection *conn = [[RSNSURLConnection alloc] init];
    conn.account = account;
        
    return [conn authenticate];
}

@end
