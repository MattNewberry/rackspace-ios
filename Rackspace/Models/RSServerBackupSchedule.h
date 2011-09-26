#import "_RSServerBackupSchedule.h"

@interface RSServerBackupSchedule : _RSServerBackupSchedule {}
// Custom logic goes here.

- (NSString *)humanWeeklyDescription;
- (NSString *)humanDailyDescription;

+ (NSArray *)weeklyOptions;
+ (NSArray *)dailyOptions;
+ (NSDictionary *)weeklyOptionsDict;
+ (NSDictionary *)dailyOptionsDict;
+ (NSString *)humanizedWeeklyForString:(NSString *)weeklyString;
+ (NSString *)humanizedDailyForString:(NSString *)timeRange;

@end
