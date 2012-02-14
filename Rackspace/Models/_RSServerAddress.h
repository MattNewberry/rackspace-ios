// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServerAddress.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;




@interface RSServerAddressID : NSManagedObjectID {}
@end

@interface _RSServerAddress : CKRecord {}




@property (nonatomic, retain) NSString *ip;


//- (BOOL)validateIp:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *type;


//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSServer* server;

//- (BOOL)validateServer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSServerAddress (CoreDataGeneratedAccessors)

@end

@interface _RSServerAddress (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveIp;
- (void)setPrimitiveIp:(NSString*)value;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;





- (RSServer*)primitiveServer;
- (void)setPrimitiveServer:(RSServer*)value;


@end
