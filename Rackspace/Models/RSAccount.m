#import "RSAccount.h"
#import "RSProvider.h"

@implementation RSAccount

+ (RSAccount *) activeAccount{
    
    NSArray *result = [RSAccount findWithPredicate:$P(@"active = 1")];

    if([result count] > 0)
        return [result objectAtIndex:0];
    
    return nil;
}

+ (BOOL)seedGroup:(NSString *)groupName{
    
    [RSProvider seed];
    
    return [super seedGroup:groupName];
    
    return NO;
}

+ (NSString *) primaryKeyName{
    
    return @"active";
}

- (void)activate {
    
    NSArray *accounts = [RSAccount findWithPredicate:$P(@"active = 1")];
    
    for (RSAccount *account in accounts) {
        
        account.active = [NSNumber numberWithBool:NO];
        [account save];
        
    }
    
    self.active = [NSNumber numberWithBool:YES];
    [self save];
    
}

- (void)authenticate:(CKResultBlock)completionBlock errorBlock:(CKResultBlock)errorBlock {
    
    NSDictionary *headers = [[NSDictionary alloc] initWithObjectsAndKeys:self.username, @"X-Auth-User", self.api_key, @"X-Auth-Key", nil];
    
    CKRequest *request = [CKRequest requestWithMap:[CKRouterMap mapWithRemotePath:self.provider.api_auth_url]];
    [request addHeaders:headers];    
    request.completionBlock = completionBlock;
    request.errorBlock = errorBlock;
    
    [request send];
    
}

@end
