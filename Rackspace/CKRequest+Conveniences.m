//
//  CKRequest+Conveniences.m
//  Rackspace
//
//  Created by Michael Mayo on 10/10/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "CKRequest+Conveniences.h"
#import "RSAccount.h"

@implementation CKRequest (Conveniences)

- (void)setBodyWithJSONDict:(NSDictionary *)dict {
    
    [self setBody:[NSJSONSerialization dataWithJSONObject:dict options:0 error:nil]];
    
}

- (void)addRackspaceHeaders {
    
    [self addHeaders:$D([[RSAccount activeAccount] api_auth_token], @"X-Auth-Token",
                           @"application/json", @"Content-Type")];

}

@end
