#import "RSServerAddress.h"

@implementation RSServerAddress

+ (id) build:(id)parameters withOptions:(NSDictionary *)options{
    
    NSArray *private = [parameters objectForKey:@"private"];
    NSArray *public = [parameters objectForKey:@"public"];
    
    NSMutableSet *resources = [NSMutableSet set];
    
    for(NSString *ip in private)        
        [resources addObject:[RSServerAddress create:$D(@"private", @"type", ip, @"ip")]];
    
    for(NSString *ip in public)        
        [resources addObject:[RSServerAddress create:$D(@"public", @"type", ip, @"ip")]];
    
    return resources;
}

@end
