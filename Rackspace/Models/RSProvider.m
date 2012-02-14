#import "RSProvider.h"
#import "RSAccount.h"
#import "RSNSURLConnection.h"

@implementation RSProvider

// overriding to sort by id ascending instead of name
+ (NSFetchRequest *)fetchRequest {

	NSFetchRequest *fetch = [super fetchRequest];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:[self primaryKeyName] ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObjects:sortDescriptor, nil];
    [fetch setSortDescriptors:sortDescriptors];
    
	return fetch;
    
}

- (BOOL)validate:(NSString *)username password:(NSString *)password {
    
    RSAccount *account = [RSAccount blank];
    account.username = username;
    account.api_key = password;  
    account.provider = self;
    
    RSNSURLConnection *conn = [[RSNSURLConnection alloc] init];
    conn.account = account;
        
    return [conn authenticate];
}

@end
