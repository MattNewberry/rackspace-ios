#import "RSFlavor.h"

@implementation RSFlavor

//+ (NSString *) remoteURLForAction:(Action)action{
//    
//    NSString *url = [super remoteURLForAction:action];
//    
//    if(action == Read)
//        return $S(@"%@/detail", url);
//    
//    return url; 
//}

- (NSString *)description {
    return $S(@"%i MB RAM, %i GB Disk", [self.ram intValue], [self.disk intValue]);
}

@end
