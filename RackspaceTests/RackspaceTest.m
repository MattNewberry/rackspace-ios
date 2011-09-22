//
//  CoreDataTestCase.m
//  ObjectiveRecord
//
//  Created by Matthew Newberry on 8/5/10.
//  Copyright (c) 2010 Shopify. All rights reserved.
//

#import "YAMLParsing.h"
#import <SenTestingKit/SenTestingKit.h>

@class CKManager;
@interface RackspaceTest : SenTestCase

@property (nonatomic, strong) CKManager *manager;
@end

@implementation RackspaceTest

@synthesize manager = _manager;

- (void) setUp{
		 
    _manager = [CKManager sharedManager];
    _manager.fixtureSerializationClass = [YAMLParsing class];
}

- (void) tearDown{
    
}

@end
