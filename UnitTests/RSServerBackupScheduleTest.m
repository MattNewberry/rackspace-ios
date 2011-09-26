//
//  RSServerBackupScheduleTest.m
//  Rackspace
//
//  Created by Michael Mayo on 9/26/11.
//  Copyright (c) 2011 MNDCreative, LLC. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "RSServerBackupSchedule.h"

@interface RSServerBackupScheduleTest : SenTestCase

@end

@implementation RSServerBackupScheduleTest

- (void)testDailyOptionsDict {

    NSTimeZone *timeZone = [NSTimeZone timeZoneWithAbbreviation:@"PST"];
    [NSTimeZone setDefaultTimeZone:timeZone];

    NSDictionary *daily = [RSServerBackupSchedule dailyOptionsDict];
    
    NSString *value = [daily objectForKey:@"H_1800_2000"];
    
    STAssertEqualObjects(@"10:00 AM - 12:00 PM PST", value, @"Daily options dictionary is incorrect");
        
}

- (void)testWeeklyOptionsDict {
    
    NSString *value = [[RSServerBackupSchedule weeklyOptionsDict] objectForKey:@"Every Monday"];
    
    STAssertEqualObjects(@"MONDAY", value, @"Weekly options dictionary is incorrect");
    
    value = [[RSServerBackupSchedule weeklyOptionsDict] objectForKey:@"Disabled"];
    
    STAssertEqualObjects(@"DISABLED", value, @"Weekly options dictionary is incorrect");
}

- (void)testHumanWeeklyDescription {
    
    RSServerBackupSchedule *backupSchedule = [RSServerBackupSchedule blank];
    backupSchedule.weekly = @"MONDAY";
    
    STAssertEqualObjects(@"Every Monday", [backupSchedule humanWeeklyDescription], @"Human weekly description is incorrect");
    
    backupSchedule.weekly = @"DISABLED";

    STAssertEqualObjects(@"Disabled", [backupSchedule humanWeeklyDescription], @"Human weekly description is incorrect");
    
}

- (void)testHumanDailyDescription {
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithAbbreviation:@"PST"];
    [NSTimeZone setDefaultTimeZone:timeZone];
    
    RSServerBackupSchedule *backupSchedule = [RSServerBackupSchedule blank];
    backupSchedule.daily = @"H_1800_2000";
    
    STAssertEqualObjects(@"10:00 AM - 12:00 PM PST", [backupSchedule humanDailyDescription], @"Human daily description is incorrect");
    
}

@end
