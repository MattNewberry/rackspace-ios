//
//  RSNSURLConnection.h
//  Rackspace
//
//  Created by Matt Newberry on 8/23/11.
//  Copyright (c) 2011 Rackspace. All rights reserved.
//

#import "CKNSURLConnection.h"
#import "RSAccount.h"

@interface RSNSURLConnection : CKNSURLConnection

@property (nonatomic, strong) RSAccount *account;

- (BOOL) authenticate;

@end
