// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSNode.m instead.

#import "_RSNode.h"

@implementation RSNodeID
@end

@implementation _RSNode





@dynamic status;






@dynamic id;



- (int)idValue {
	NSNumber *result = [self id];
	return [result intValue];
}

- (void)setIdValue:(int)value_ {
	[self setId:[NSNumber numberWithInt:value_]];
}

- (int)primitiveIdValue {
	NSNumber *result = [self primitiveId];
	return [result intValue];
}

- (void)setPrimitiveIdValue:(int)value_ {
	[self setPrimitiveId:[NSNumber numberWithInt:value_]];
}





@dynamic port;



- (short)portValue {
	NSNumber *result = [self port];
	return [result shortValue];
}

- (void)setPortValue:(short)value_ {
	[self setPort:[NSNumber numberWithShort:value_]];
}

- (short)primitivePortValue {
	NSNumber *result = [self primitivePort];
	return [result shortValue];
}

- (void)setPrimitivePortValue:(short)value_ {
	[self setPrimitivePort:[NSNumber numberWithShort:value_]];
}





@dynamic weight;



- (short)weightValue {
	NSNumber *result = [self weight];
	return [result shortValue];
}

- (void)setWeightValue:(short)value_ {
	[self setWeight:[NSNumber numberWithShort:value_]];
}

- (short)primitiveWeightValue {
	NSNumber *result = [self primitiveWeight];
	return [result shortValue];
}

- (void)setPrimitiveWeightValue:(short)value_ {
	[self setPrimitiveWeight:[NSNumber numberWithShort:value_]];
}





@dynamic address;






@dynamic condition;






@dynamic load_balancer;

	





@end
