// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSVirtualIP.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSLoadBalancer;






@interface RSVirtualIPID : NSManagedObjectID {}
@end

@interface _RSVirtualIP : CKRecord {}




@property (nonatomic, strong) NSString *type;


//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *address;


//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *ipVersion;


//- (BOOL)validateIpVersion:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) RSLoadBalancer* load_balancer;

//- (BOOL)validateLoad_balancer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSVirtualIP (CoreDataGeneratedAccessors)

@end

@interface _RSVirtualIP (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSString*)primitiveAddress;
- (void)setPrimitiveAddress:(NSString*)value;




- (NSString*)primitiveIpVersion;
- (void)setPrimitiveIpVersion:(NSString*)value;





- (RSLoadBalancer*)primitiveLoad_balancer;
- (void)setPrimitiveLoad_balancer:(RSLoadBalancer*)value;


@end
