// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServerMetaData.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;




@interface RSServerMetaDataID : NSManagedObjectID {}
@end

@interface _RSServerMetaData : CKRecord {}




@property (nonatomic, retain) NSString *key;


//- (BOOL)validateKey:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *value;


//- (BOOL)validateValue:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSServer* server;

//- (BOOL)validateServer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSServerMetaData (CoreDataGeneratedAccessors)

@end

@interface _RSServerMetaData (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveKey;
- (void)setPrimitiveKey:(NSString*)value;




- (NSString*)primitiveValue;
- (void)setPrimitiveValue:(NSString*)value;





- (RSServer*)primitiveServer;
- (void)setPrimitiveServer:(RSServer*)value;


@end
