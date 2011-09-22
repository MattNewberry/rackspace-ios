//
//  YAMLParsing.m
//  Rackspace
//
//  Created by Matt Newberry on 6/23/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import "YAMLParsing.h"
#import <YML/YAMLSerialization.h>

@implementation YAMLParsing

- (id) serialize:(id)object{
    
    return @"";
}

- (id) deserialize:(NSData *)object{
    
    NSError *error = nil;
    
    NSInputStream *stream = [[NSInputStream alloc] initWithData:object];
    NSMutableArray *yaml = [YAMLSerialization YAMLWithStream: stream
                                                     options: kYAMLReadOptionStringScalars
                                                       error: &error];
    
	return error == nil ? [yaml objectAtIndex:0] : [NSArray array];
}

@end
