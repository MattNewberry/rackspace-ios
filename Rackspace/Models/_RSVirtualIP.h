// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSVirtualIP.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSLoadBalancer;






@interface RSVirtualIPID : NSManagedObjectID {}
@end

@interface _RSVirtualIP : CKRecord {}




@property (nonatomic, retain) NSString *address;


//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *id;


//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *ipVersion;


//- (BOOL)validateIpVersion:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *type;


//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSLoadBalancer* load_balancer;

//- (BOOL)validateLoad_balancer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSVirtualIP (CoreDataGeneratedAccessors)

@end

@interface _RSVirtualIP (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAddress;
- (void)setPrimitiveAddress:(NSString*)value;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveIpVersion;
- (void)setPrimitiveIpVersion:(NSString*)value;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;





- (RSLoadBalancer*)primitiveLoad_balancer;
- (void)setPrimitiveLoad_balancer:(RSLoadBalancer*)value;


@end
