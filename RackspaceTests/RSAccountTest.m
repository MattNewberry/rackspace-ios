//
//  RSAccountTest.m
//  Rackspace
//
//  Created by Matthew Newberry on 6/16/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import "RSAccount.h"
#import "RSProvider.h"
#import <SenTestingKit/SenTestingKit.h>

@interface RSAccountTest : SenTestCase 
@end

@implementation RSAccountTest

- (void) testReturnActiveAccount{
    
    [RSAccount seedGroup:@"demo"];
    
    STAssertNotNil([RSAccount activeAccount], @"Failed to return active account");
    STAssertNotNil([RSAccount activeAccount].provider, @"Failed to link provider");
}

@end
