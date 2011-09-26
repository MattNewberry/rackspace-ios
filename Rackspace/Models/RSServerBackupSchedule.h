#import "_RSServerBackupSchedule.h"

@interface RSServerBackupSchedule : _RSServerBackupSchedule {}
// Custom logic goes here.

- (NSString *)humanWeeklyDescription;
- (NSString *)humanDailyDescription;

+ (NSArray *)weeklyOptions;
+ (NSArray *)dailyOptions;
+ (NSDictionary *)weeklyOptionsDict;
+ (NSDictionary *)dailyOptionsDict;
+ (NSString *)humanWeeklyDescriptionForString:(NSString *)weeklyString;
+ (NSString *)humanDailyDescriptionForString:(NSString *)timeRange;

@end
