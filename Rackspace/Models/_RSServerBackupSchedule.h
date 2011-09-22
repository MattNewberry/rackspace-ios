// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServerBackupSchedule.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;




@interface RSServerBackupScheduleID : NSManagedObjectID {}
@end

@interface _RSServerBackupSchedule : CKRecord {}




@property (nonatomic, strong) NSString *weekly;


//- (BOOL)validateWeekly:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *daily;


//- (BOOL)validateDaily:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) RSServer* server;

//- (BOOL)validateServer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSServerBackupSchedule (CoreDataGeneratedAccessors)

@end

@interface _RSServerBackupSchedule (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveWeekly;
- (void)setPrimitiveWeekly:(NSString*)value;




- (NSString*)primitiveDaily;
- (void)setPrimitiveDaily:(NSString*)value;





- (RSServer*)primitiveServer;
- (void)setPrimitiveServer:(RSServer*)value;


@end
