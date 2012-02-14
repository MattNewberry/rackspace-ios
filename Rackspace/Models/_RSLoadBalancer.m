// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSLoadBalancer.m instead.

#import "_RSLoadBalancer.h"

@implementation RSLoadBalancerID
@end

@implementation _RSLoadBalancer





@dynamic algorithm;






@dynamic created;






@dynamic id;






@dynamic name;






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





@dynamic protocol;






@dynamic status;






@dynamic updated;






@dynamic account;

	

@dynamic nodes;

	
- (NSMutableSet*)nodesSet {
	[self willAccessValueForKey:@"nodes"];
	NSMutableSet *result = [self mutableSetValueForKey:@"nodes"];
	[self didAccessValueForKey:@"nodes"];
	return result;
}
	

@dynamic virtual_ips;

	
- (NSMutableSet*)virtual_ipsSet {
	[self willAccessValueForKey:@"virtual_ips"];
	NSMutableSet *result = [self mutableSetValueForKey:@"virtual_ips"];
	[self didAccessValueForKey:@"virtual_ips"];
	return result;
}
	





@end
