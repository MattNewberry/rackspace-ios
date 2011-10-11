// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServer.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSAccount;
@class RSServerAddress;
@class RSServerBackupSchedule;
@class RSFlavor;
@class RSImage;
@class RSServerMetaData;
@class RSSharedIPGroup;








@interface RSServerID : NSManagedObjectID {}
@end

@interface _RSServer : CKRecord {}




@property (nonatomic, retain) NSString *flavorId;


//- (BOOL)validateFlavorId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *hostId;


//- (BOOL)validateHostId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *id;


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





@property (nonatomic, retain) RSAccount* account;

//- (BOOL)validateAccount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* addresses;

- (NSMutableSet*)addressesSet;




@property (nonatomic, retain) RSServerBackupSchedule* backup_schedule;

//- (BOOL)validateBackup_schedule:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) RSFlavor* flavor;

//- (BOOL)validateFlavor:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) RSImage* image;

//- (BOOL)validateImage:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* metadata;

- (NSMutableSet*)metadataSet;




@property (nonatomic, retain) RSSharedIPGroup* shared_ip_group;

//- (BOOL)validateShared_ip_group:(id*)value_ error:(NSError**)error_;




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


- (NSString*)primitiveFlavorId;
- (void)setPrimitiveFlavorId:(NSString*)value;




- (NSString*)primitiveHostId;
- (void)setPrimitiveHostId:(NSString*)value;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveProgress;
- (void)setPrimitiveProgress:(NSNumber*)value;

- (short)primitiveProgressValue;
- (void)setPrimitiveProgressValue:(short)value_;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;





- (RSAccount*)primitiveAccount;
- (void)setPrimitiveAccount:(RSAccount*)value;



- (NSMutableSet*)primitiveAddresses;
- (void)setPrimitiveAddresses:(NSMutableSet*)value;



- (RSServerBackupSchedule*)primitiveBackup_schedule;
- (void)setPrimitiveBackup_schedule:(RSServerBackupSchedule*)value;



- (RSFlavor*)primitiveFlavor;
- (void)setPrimitiveFlavor:(RSFlavor*)value;



- (RSImage*)primitiveImage;
- (void)setPrimitiveImage:(RSImage*)value;



- (NSMutableSet*)primitiveMetadata;
- (void)setPrimitiveMetadata:(NSMutableSet*)value;



- (RSSharedIPGroup*)primitiveShared_ip_group;
- (void)setPrimitiveShared_ip_group:(RSSharedIPGroup*)value;


@end
