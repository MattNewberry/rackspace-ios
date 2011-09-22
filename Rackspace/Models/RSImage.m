#import "RSImage.h"
#import "RSServer.h"

@implementation RSImage

//+ (NSString *) remoteURLForAction:(Action)action{
//    
//    NSString *url = [super remoteURLForAction:action];
//    
//    if(action == Read)
//        return $S(@"%@/detail", url);
//    
//    return url; 
//}
//
//- (void) willUpdate:(id)parameters data:(NSDictionary *)data{
// 
//    if([data objectForKey:@"serverId"])        
//        self.server = [RSServer findByID:$I([[data objectForKey:@"serverId"] intValue])];
//}

@end
