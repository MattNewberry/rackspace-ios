// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSNode.m instead.

#import "_RSNode.h"

@implementation RSNodeID
@end

@implementation _RSNode





@dynamic address;






@dynamic condition;






@dynamic id;






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





@dynamic status;






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





@dynamic load_balancer;

	





@end
