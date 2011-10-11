// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSFlavor.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;






@interface RSFlavorID : NSManagedObjectID {}
@end

@interface _RSFlavor : CKRecord {}




@property (nonatomic, retain) NSNumber *disk;


@property short diskValue;
- (short)diskValue;
- (void)setDiskValue:(short)value_;

//- (BOOL)validateDisk:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *id;


//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *ram;


@property short ramValue;
- (short)ramValue;
- (void)setRamValue:(short)value_;

//- (BOOL)validateRam:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSServer* server;

//- (BOOL)validateServer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSFlavor (CoreDataGeneratedAccessors)

@end

@interface _RSFlavor (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveDisk;
- (void)setPrimitiveDisk:(NSNumber*)value;

- (short)primitiveDiskValue;
- (void)setPrimitiveDiskValue:(short)value_;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveRam;
- (void)setPrimitiveRam:(NSNumber*)value;

- (short)primitiveRamValue;
- (void)setPrimitiveRamValue:(short)value_;





- (RSServer*)primitiveServer;
- (void)setPrimitiveServer:(RSServer*)value;


@end
