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

@end
