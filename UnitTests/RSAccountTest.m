//
//  RSAccountTest.m
//  Rackspace
//
//  Created by Matthew Newberry on 6/16/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import <SenTestingKit/SenTestingKit.h>
#import "RSAccount.h"
#import "RSProvider.h"


@interface RSAccountTest : SenTestCase 

@end

@implementation RSAccountTest

- (void) testReturnActiveAccount{
    
    [RSAccount seedGroup:@"demo"];
    
    STAssertNotNil([RSAccount activeAccount], @"Failed to return active account");
    STAssertNotNil([RSAccount activeAccount].provider, @"Failed to link provider");
}

- (void)testActivate {
    
    [RSAccount seedGroup:@"demo"];
    RSAccount *account = [RSAccount activeAccount];
    
    STAssertNil(account, @"activate test not implemented");
    
}

- (void)testAuthentication {
    
    [RSAccount seedGroup:@"demo"];
    RSAccount *account = [RSAccount activeAccount];
    
    STAssertNil(account, @"authentication test not implemented");
    
}

@end
