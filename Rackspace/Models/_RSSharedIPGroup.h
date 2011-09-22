// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSSharedIPGroup.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSServer;




@interface RSSharedIPGroupID : NSManagedObjectID {}
@end

@interface _RSSharedIPGroup : CKRecord {}




@property (nonatomic, strong) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* servers;

- (NSMutableSet*)serversSet;




@end

@interface _RSSharedIPGroup (CoreDataGeneratedAccessors)

- (void)addServers:(NSSet*)value_;
- (void)removeServers:(NSSet*)value_;
- (void)addServersObject:(RSServer*)value_;
- (void)removeServersObject:(RSServer*)value_;

@end

@interface _RSSharedIPGroup (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveServers;
- (void)setPrimitiveServers:(NSMutableSet*)value;


@end
