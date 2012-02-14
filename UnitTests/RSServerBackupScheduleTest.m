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

    // we're using Hawaii time because it's one of the few in the US that does not
    // observe daylight savings, thus making this unit test valid at any time of year
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"Pacific/Honolulu"];
    
    STAssertEqualObjects([timeZone name], @"Pacific/Honolulu", @"Time zone not initialized properly");
    
    [NSTimeZone setDefaultTimeZone:timeZone];

    NSDictionary *daily = [RSServerBackupSchedule dailyOptionsDict];
    
    NSString *value = [daily objectForKey:@"H_1800_2000"];
    
    STAssertEqualObjects(value, @"8:00 AM - 10:00 AM HST", @"Daily options dictionary is incorrect");
        
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
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"Pacific/Honolulu"];
    
    STAssertEqualObjects([timeZone name], @"Pacific/Honolulu", @"Time zone not initialized properly");
    
    [NSTimeZone setDefaultTimeZone:timeZone];
    
    RSServerBackupSchedule *backupSchedule = [RSServerBackupSchedule blank];
    backupSchedule.daily = @"H_1800_2000";

    STAssertEqualObjects([backupSchedule humanDailyDescription], @"8:00 AM - 10:00 AM HST", @"Human daily description is incorrect");
    
}

@end
