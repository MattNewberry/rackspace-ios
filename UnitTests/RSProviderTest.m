//
//  RSProviderTest.m
//  Rackspace
//
//  Created by Matt Newberry on 7/11/11.
//  Copyright 2011 Rackspace. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "RSAccount.h"
#import "RSProvider.h"
#import "CKRecord.h"

@interface RSProviderTest : SenTestCase
@end

@implementation RSProviderTest

- (void) testAPIKeyAuthentication{
        
    [RSAccount seedGroup:@"demo"];
    
    RSAccount *account = [RSAccount first];
    
    BOOL valid = [account.provider validate:account.username password:account.api_key];
    STAssertTrue(valid, @"Could not validate account info");
}

@end
