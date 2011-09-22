// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSSharedIPGroup.m instead.

#import "_RSSharedIPGroup.h"

@implementation RSSharedIPGroupID
@end

@implementation _RSSharedIPGroup





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





@dynamic name;






@dynamic servers;

	
- (NSMutableSet*)serversSet {
	[self willAccessValueForKey:@"servers"];
	NSMutableSet *result = [self mutableSetValueForKey:@"servers"];
	[self didAccessValueForKey:@"servers"];
	return result;
}
	





@end
