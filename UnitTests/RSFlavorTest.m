//
//  RSFlavorTest.m
//  Rackspace
//
//  Created by Michael Mayo on 9/22/11.
//  Copyright (c) 2011 MNDCreative, LLC. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "RSFlavor.h"

@interface RSFlavorTest : SenTestCase

@end


@implementation RSFlavorTest

- (void) testDescription {
    
    RSFlavor *flavor = [RSFlavor blank];
    flavor.ram = [NSNumber numberWithInt:256];
    flavor.disk = [NSNumber numberWithInt:10];
    
    STAssertEqualObjects(@"256 MB RAM, 10 GB Disk", [flavor description], @"Flavor description is incorrect");
    
}
@end
