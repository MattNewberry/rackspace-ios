//
//  CKRequest+Conveniences.m
//  Rackspace
//
//  Created by Michael Mayo on 10/10/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "CKRequest+Conveniences.h"

@implementation CKRequest (Conveniences)

- (void)setBodyWithJSONDict:(NSDictionary *)dict {
    
    [self setBody:[NSJSONSerialization dataWithJSONObject:dict options:0 error:nil]];
    
}

@end
