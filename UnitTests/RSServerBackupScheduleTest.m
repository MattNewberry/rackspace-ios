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
    
    STAssertEqualObjects(value, @"10:00 AM - 12:00 PM PST", @"Daily options dictionary is incorrect");
        
}

- (void)testWeeklyOptionsDict {
    
    NSString *value = [[RSServerBackupSchedule weeklyOptionsDict] objectForKey:@"Every Monday"];
    
    STAssertEqualObjects(value, @"MONDAY", @"Weekly options dictionary is incorrect");
    
    value = [[RSServerBackupSchedule weeklyOptionsDict] objectForKey:@"Disabled"];
    
    STAssertEqualObjects(value, @"DISABLED", @"Weekly options dictionary is incorrect");
}

- (void)testHumanWeeklyDescription {
    
    RSServerBackupSchedule *backupSchedule = [RSServerBackupSchedule blank];
    backupSchedule.weekly = @"MONDAY";
    
    STAssertEqualObjects([backupSchedule humanWeeklyDescription], @"Every Monday", @"Human weekly description is incorrect");
    
    backupSchedule.weekly = @"DISABLED";

    STAssertEqualObjects([backupSchedule humanWeeklyDescription], @"Disabled", @"Human weekly description is incorrect");
    
}

- (void)testHumanDailyDescription {
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithAbbreviation:@"PST"];
    [NSTimeZone setDefaultTimeZone:timeZone];
    
    RSServerBackupSchedule *backupSchedule = [RSServerBackupSchedule blank];
    backupSchedule.daily = @"H_1800_2000";
    
    STAssertEqualObjects([backupSchedule humanDailyDescription], @"10:00 AM - 12:00 PM PST", @"Human daily description is incorrect");
    
}

@end
