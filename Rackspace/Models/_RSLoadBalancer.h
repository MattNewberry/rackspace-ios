// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSLoadBalancer.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSNode;
@class RSAccount;
@class RSVirtualIP;










@interface RSLoadBalancerID : NSManagedObjectID {}
@end

@interface _RSLoadBalancer : CKRecord {}




@property (nonatomic, strong) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *protocol;


//- (BOOL)validateProtocol:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *port;


@property short portValue;
- (short)portValue;
- (void)setPortValue:(short)value_;

//- (BOOL)validatePort:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate *updated;


//- (BOOL)validateUpdated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSDate *created;


//- (BOOL)validateCreated:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *algorithm;


//- (BOOL)validateAlgorithm:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* nodes;

- (NSMutableSet*)nodesSet;




@property (nonatomic, strong) RSAccount* account;

//- (BOOL)validateAccount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet* virtual_ips;

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


- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveProtocol;
- (void)setPrimitiveProtocol:(NSString*)value;




- (NSNumber*)primitivePort;
- (void)setPrimitivePort:(NSNumber*)value;

- (short)primitivePortValue;
- (void)setPrimitivePortValue:(short)value_;




- (NSDate*)primitiveUpdated;
- (void)setPrimitiveUpdated:(NSDate*)value;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSDate*)primitiveCreated;
- (void)setPrimitiveCreated:(NSDate*)value;




- (NSString*)primitiveAlgorithm;
- (void)setPrimitiveAlgorithm:(NSString*)value;





- (NSMutableSet*)primitiveNodes;
- (void)setPrimitiveNodes:(NSMutableSet*)value;



- (RSAccount*)primitiveAccount;
- (void)setPrimitiveAccount:(RSAccount*)value;



- (NSMutableSet*)primitiveVirtual_ips;
- (void)setPrimitiveVirtual_ips:(NSMutableSet*)value;


@end
