//
//  RSFileConnectionTest.m
//  Rackspace
//
//  Created by Matt Newberry on 6/27/11.
//  The Rackspace project is provided under the Apache 2.0 license.
//

#import "RSFileConnection.h"
#import "RSServer.h"
#import "RSAccount.h"
#import <SenTestingKit/SenTestingKit.h>

@interface RSFileConnectionTest : SenTestCase
@end

@implementation RSFileConnectionTest

- (void) testShouldMapRemoteURLstoLocalFileSystem{
    
    //[RSAccount seedGroup:@"demo"];
    
    //[[ActiveManager shared] setConnectionClass:[RSFileConnection class]];
    
    //[RSServer pull:nil didFinishBlock:^(ActiveResult *result){
    //    STAssertEquals(53, [RSServer count], @"Failed to properly map connections to local file system");
    //}didFailBlock:nil];
}

@end
