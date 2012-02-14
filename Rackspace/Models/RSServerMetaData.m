#import "RSServerMetaData.h"

@implementation RSServerMetaData

+ (id) build:(id)parameters withOptions:(NSDictionary *)options{
    
    NSMutableSet *resources = [NSMutableSet set];
    
    NSDictionary *params = (NSDictionary *) parameters;
    
    [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
       
        [resources addObject:[RSServerMetaData create:$D(key, @"key", obj, @"value")]];
    }];
    
    return resources;
}

@end
