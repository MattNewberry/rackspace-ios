//
//  RSFileConnection.h
//  Rackspace
//
//  Created by Matt Newberry on 6/27/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import <Foundation/Foundation.h>
#import "RSNSURLConnection.h"

@interface RSFileConnection : RSNSURLConnection {
    
    NSString *_rootPath;
}

@property (nonatomic, retain) NSString *rootPath;

@end
