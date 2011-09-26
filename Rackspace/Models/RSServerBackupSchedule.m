#import "RSServerBackupSchedule.h"

@implementation RSServerBackupSchedule

// Custom logic goes here.

- (NSString *)humanWeeklyDescription {
    return @"not implemented";
}

- (NSString *)humanDailyDescription {
    return @"not implemented";
}

+ (NSArray *)weeklyOptions {

    return [NSArray arrayWithObjects:@"DISABLED", @"MONDAY", @"TUESDAY", @"WEDNESDAY", 
                                     @"THURSDAY", @"FRIDAY", @"SATURDAY", @"SUNDAY", nil];    
    
}

+ (NSArray *)dailyOptions {
    return [NSArray array];
}

+ (NSDictionary *)weeklyOptionsDict {
    return [NSDictionary dictionary];
}

+ (NSDictionary *)dailyOptionsDict {
    return [NSDictionary dictionary];
}

+ (NSString *)humanizedWeeklyForString:(NSString *)weeklyString {
    return @"not implemented";
}

+ (NSString *)humanizedDailyForString:(NSString *)timeRange {
    return @"not implemented";
}


@end
