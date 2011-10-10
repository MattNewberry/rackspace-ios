// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSNode.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSLoadBalancer;








@interface RSNodeID : NSManagedObjectID {}
@end

@interface _RSNode : CKRecord {}




@property (nonatomic, retain) NSString *address;


//- (BOOL)validateAddress:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *condition;


//- (BOOL)validateCondition:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *id;


@property int idValue;
- (int)idValue;
- (void)setIdValue:(int)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *port;


@property short portValue;
- (short)portValue;
- (void)setPortValue:(short)value_;

//- (BOOL)validatePort:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *status;


//- (BOOL)validateStatus:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSNumber *weight;


@property short weightValue;
- (short)weightValue;
- (void)setWeightValue:(short)value_;

//- (BOOL)validateWeight:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) RSLoadBalancer* load_balancer;

//- (BOOL)validateLoad_balancer:(id*)value_ error:(NSError**)error_;




@end

@interface _RSNode (CoreDataGeneratedAccessors)

@end

@interface _RSNode (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAddress;
- (void)setPrimitiveAddress:(NSString*)value;




- (NSString*)primitiveCondition;
- (void)setPrimitiveCondition:(NSString*)value;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int)primitiveIdValue;
- (void)setPrimitiveIdValue:(int)value_;




- (NSNumber*)primitivePort;
- (void)setPrimitivePort:(NSNumber*)value;

- (short)primitivePortValue;
- (void)setPrimitivePortValue:(short)value_;




- (NSString*)primitiveStatus;
- (void)setPrimitiveStatus:(NSString*)value;




- (NSNumber*)primitiveWeight;
- (void)setPrimitiveWeight:(NSNumber*)value;

- (short)primitiveWeightValue;
- (void)setPrimitiveWeightValue:(short)value_;





- (RSLoadBalancer*)primitiveLoad_balancer;
- (void)setPrimitiveLoad_balancer:(RSLoadBalancer*)value;


@end
