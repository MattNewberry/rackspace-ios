// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSLoadBalancer.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSAccount;
@class RSNode;
@class RSVirtualIP;










@interface RSLoadBalancerID : NSManagedObjectID {}
@end

@interface _RSLoadBalancer : CKRecord {}




@property (nonatomic, retain) NSString *algorithm;


//- (BOOL)validateAlgorithm:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *created;


//- (BOOL)validateCreated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *id;


//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *port;


@property short portValue;
- (short)portValue;
- (void)setPortValue:(short)value_;

//- (BOOL)validatePort:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *protocol;


//- (BOOL)validateProtocol:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSDate *updated;


//- (BOOL)validateUpdated:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSAccount* account;

//- (BOOL)validateAccount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* nodes;

- (NSMutableSet*)nodesSet;




@property (nonatomic, retain) NSSet* virtual_ips;

- (NSMutableSet*)virtual_ipsSet;




@end

@interface _RSLoadBalancer (CoreDataGeneratedAccessors)

- (void)addNodes:(NSSet*)value_;
- (void)removeNodes:(NSSet*)value_;
- (void)addNodesObject:(RSNode*)value_;
- (void)removeNodesObject:(RSNode*)value_;

- (void)addVirtual_ips:(NSSet*)value_;
- (void)removeVirtual_ips:(NSSet*)value_;
- (void)addVirtual_ipsObject:(RSVirtualIP*)value_;
- (void)removeVirtual_ipsObject:(RSVirtualIP*)value_;

@end

@interface _RSLoadBalancer (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAlgorithm;
- (void)setPrimitiveAlgorithm:(NSString*)value;




- (NSDate*)primitiveCreated;
- (void)setPrimitiveCreated:(NSDate*)value;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitivePort;
- (void)setPrimitivePort:(NSNumber*)value;

- (short)primitivePortValue;
- (void)setPrimitivePortValue:(short)value_;




- (NSString*)primitiveProtocol;
- (void)setPrimitiveProtocol:(NSString*)value;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSDate*)primitiveUpdated;
- (void)setPrimitiveUpdated:(NSDate*)value;





- (RSAccount*)primitiveAccount;
- (void)setPrimitiveAccount:(RSAccount*)value;



- (NSMutableSet*)primitiveNodes;
- (void)setPrimitiveNodes:(NSMutableSet*)value;



- (NSMutableSet*)primitiveVirtual_ips;
- (void)setPrimitiveVirtual_ips:(NSMutableSet*)value;


@end
