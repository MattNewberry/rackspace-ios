// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSImage.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;









@interface RSImageID : NSManagedObjectID {}
@end

@interface _RSImage : CKRecord {}




@property (nonatomic, retain) NSNumber *can_be_launched;


@property BOOL can_be_launchedValue;
- (BOOL)can_be_launchedValue;
- (void)setCan_be_launchedValue:(BOOL)value_;

//- (BOOL)validateCan_be_launched:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *created;


//- (BOOL)validateCreated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *progress;


@property short progressValue;
- (short)progressValue;
- (void)setProgressValue:(short)value_;

//- (BOOL)validateProgress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *updated;


//- (BOOL)validateUpdated:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSSet* servers;

- (NSMutableSet*)serversSet;




@end

@interface _RSImage (CoreDataGeneratedAccessors)

- (void)addServers:(NSSet*)value_;
- (void)removeServers:(NSSet*)value_;
- (void)addServersObject:(RSServer*)value_;
- (void)removeServersObject:(RSServer*)value_;

@end

@interface _RSImage (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveCan_be_launched;
- (void)setPrimitiveCan_be_launched:(NSNumber*)value;

- (BOOL)primitiveCan_be_launchedValue;
- (void)setPrimitiveCan_be_launchedValue:(BOOL)value_;




- (NSDate*)primitiveCreated;
- (void)setPrimitiveCreated:(NSDate*)value;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveProgress;
- (void)setPrimitiveProgress:(NSNumber*)value;

- (short)primitiveProgressValue;
- (void)setPrimitiveProgressValue:(short)value_;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSDate*)primitiveUpdated;
- (void)setPrimitiveUpdated:(NSDate*)value;





- (NSMutableSet*)primitiveServers;
- (void)setPrimitiveServers:(NSMutableSet*)value;


@end
