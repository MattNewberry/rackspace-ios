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
    
    RSAccount *ukAccount = [[RSAccount findWhereAttribute:@"username" equals:@"test_uk_account"] objectAtIndex:0];
        
    STAssertEqualObjects([[RSAccount activeAccount] username], @"rackcloud07", @"activeAccount returned the wrong object");

    [ukAccount activate];
    
    STAssertEqualObjects([[RSAccount activeAccount] username], @"test_uk_account", @"activeAccount returned the wrong object");

    RSAccount *usAccount = [[RSAccount findWhereAttribute:@"username" equals:@"rackcloud07"] objectAtIndex:0];
    
    STAssertFalse([usAccount.active boolValue], @"previously active account was not deactivated");
    
}

- (void)testAuthentication {
    
    [RSAccount seedGroup:@"demo"];
    RSAccount *account = [RSAccount activeAccount];
    
    STAssertNil(account, @"authentication test not implemented");
    
}

@end
