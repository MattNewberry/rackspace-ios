// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServer.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSSharedIPGroup;
@class RSAccount;
@class RSServerBackupSchedule;
@class RSServerAddress;
@class RSImage;
@class RSServerMetaData;
@class RSFlavor;







@interface RSServerID : NSManagedObjectID {}
@end

@interface _RSServer : CKRecord {}




@property (nonatomic, strong) NSNumber *progress;


@property short progressValue;
- (short)progressValue;
- (void)setProgressValue:(short)value_;

//- (BOOL)validateProgress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *hostId;


//- (BOOL)validateHostId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) RSSharedIPGroup* shared_ip_group;

//- (BOOL)validateShared_ip_group:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) RSAccount* account;

//- (BOOL)validateAccount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) RSServerBackupSchedule* backup_schedule;

//- (BOOL)validateBackup_schedule:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* addresses;

- (NSMutableSet*)addressesSet;




@property (nonatomic, strong) RSImage* image;

//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* metadata;

- (NSMutableSet*)metadataSet;




@property (nonatomic, strong) RSFlavor* flavor;

//- (BOOL)validateFlavor:(id*)value_ error:(NSError**)error_;




@end

@interface _RSServer (CoreDataGeneratedAccessors)

- (void)addAddresses:(NSSet*)value_;
- (void)removeAddresses:(NSSet*)value_;
- (void)addAddressesObject:(RSServerAddress*)value_;
- (void)removeAddressesObject:(RSServerAddress*)value_;

- (void)addMetadata:(NSSet*)value_;
- (void)removeMetadata:(NSSet*)value_;
- (void)addMetadataObject:(RSServerMetaData*)value_;
- (void)removeMetadataObject:(RSServerMetaData*)value_;

@end

@interface _RSServer (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveProgress;
- (void)setPrimitiveProgress:(NSNumber*)value;

- (short)primitiveProgressValue;
- (void)setPrimitiveProgressValue:(short)value_;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSString*)primitiveHostId;
- (void)setPrimitiveHostId:(NSString*)value;





- (RSSharedIPGroup*)primitiveShared_ip_group;
- (void)setPrimitiveShared_ip_group:(RSSharedIPGroup*)value;



- (RSAccount*)primitiveAccount;
- (void)setPrimitiveAccount:(RSAccount*)value;



- (RSServerBackupSchedule*)primitiveBackup_schedule;
- (void)setPrimitiveBackup_schedule:(RSServerBackupSchedule*)value;



- (NSMutableSet*)primitiveAddresses;
- (void)setPrimitiveAddresses:(NSMutableSet*)value;



- (RSImage*)primitiveImage;
- (void)setPrimitiveImage:(RSImage*)value;



- (NSMutableSet*)primitiveMetadata;
- (void)setPrimitiveMetadata:(NSMutableSet*)value;



- (RSFlavor*)primitiveFlavor;
- (void)setPrimitiveFlavor:(RSFlavor*)value;


@end
