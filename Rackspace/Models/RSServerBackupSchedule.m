#import "RSServerBackupSchedule.h"

@implementation RSServerBackupSchedule

// Custom logic goes here.

- (NSString *)humanWeeklyDescription {
    
    return [RSServerBackupSchedule humanWeeklyDescriptionForString:self.weekly];
    
}

- (NSString *)humanDailyDescription {
    return @"not implemented";
}

+ (NSArray *)weeklyOptions {

    return [NSArray arrayWithObjects:@"DISABLED", @"MONDAY", @"TUESDAY", @"WEDNESDAY", 
                                     @"THURSDAY", @"FRIDAY", @"SATURDAY", @"SUNDAY", nil];    
    
}

+ (NSArray *)dailyOptions {

    NSArray *timeRanges = [NSArray arrayWithObjects:@"H_0000_0200", @"H_0200_0400", @"H_0400_0600", @"H_0600_0800", @"H_0800_1000", @"H_1000_1200", @"H_1200_1400", @"H_1400_1600", @"H_1600_1800", @"H_1800_2000", @"H_2000_2200", @"H_2200_0000", nil];
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger gmtOffset = (([tz secondsFromGMT] / 3600) / 2);    
    if (gmtOffset < 0) {
        gmtOffset = [timeRanges count] + gmtOffset;
    }
    
    NSMutableArray *dailyOptions = [[NSMutableArray alloc] initWithCapacity:12];
    for (int i = gmtOffset; i < [timeRanges count]; i++) {
        [dailyOptions addObject:[timeRanges objectAtIndex:i]];
    }
    for (int i = 0; i < gmtOffset; i++) {
        [dailyOptions addObject:[timeRanges objectAtIndex:i]];
    }
    
    [dailyOptions insertObject:@"DISABLED" atIndex:0];
    
    return [NSArray arrayWithArray:dailyOptions];

}

+ (NSDictionary *)weeklyOptionsDict {

    NSArray *weeklyOptions = [self weeklyOptions];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:8];
    
    for (NSString *option in weeklyOptions) {
        [dict setObject:[self humanWeeklyDescriptionForString:option] forKey:option];
    }

    return [NSDictionary dictionaryWithDictionary:dict];;

}

+ (NSDictionary *)dailyOptionsDict {

    NSArray *dailyOptions = [self dailyOptions];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:13];
    
    for (NSString *option in dailyOptions) {
        [dict setObject:[self humanDailyDescriptionForString:option] forKey:option];
    }

    return [NSDictionary dictionaryWithDictionary:dict];

}

+ (NSString *)humanWeeklyDescriptionForString:(NSString *)weeklyString {
    
    if ([weeklyString isEqualToString:@"DISABLED"]) {        
        
        return @"Disabled";        
        
    } else {        
        
        return $S(@"Every %@", [weeklyString capitalizedString]);         
        
    }
    
}

+ (NSString *)humanDailyDescriptionForString:(NSString *)timeRange {
    return @"not implemented";
}


@end
