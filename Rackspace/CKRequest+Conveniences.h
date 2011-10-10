//
//  CKRequest+Conveniences.h
//  Rackspace
//
//  Created by Michael Mayo on 10/10/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "CKRequest.h"

@interface CKRequest (Conveniences)

- (void)setBodyWithJSONDict:(NSDictionary *)dict;
- (void)addRackspaceHeaders;
- (void)addRackspaceCacheBuster;

@end
