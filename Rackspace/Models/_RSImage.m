// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSImage.m instead.

#import "_RSImage.h"

@implementation RSImageID
@end

@implementation _RSImage





@dynamic can_be_launched;



- (BOOL)can_be_launchedValue {
	NSNumber *result = [self can_be_launched];
	return [result boolValue];
}

- (void)setCan_be_launchedValue:(BOOL)value_ {
	[self setCan_be_launched:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveCan_be_launchedValue {
	NSNumber *result = [self primitiveCan_be_launched];
	return [result boolValue];
}

- (void)setPrimitiveCan_be_launchedValue:(BOOL)value_ {
	[self setPrimitiveCan_be_launched:[NSNumber numberWithBool:value_]];
}





@dynamic created;






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






@dynamic progress;



- (short)progressValue {
	NSNumber *result = [self progress];
	return [result shortValue];
}

- (void)setProgressValue:(short)value_ {
	[self setProgress:[NSNumber numberWithShort:value_]];
}

- (short)primitiveProgressValue {
	NSNumber *result = [self primitiveProgress];
	return [result shortValue];
}

- (void)setPrimitiveProgressValue:(short)value_ {
	[self setPrimitiveProgress:[NSNumber numberWithShort:value_]];
}





@dynamic status;






@dynamic updated;






@dynamic servers;

	
- (NSMutableSet*)serversSet {
	[self willAccessValueForKey:@"servers"];
	NSMutableSet *result = [self mutableSetValueForKey:@"servers"];
	[self didAccessValueForKey:@"servers"];
	return result;
}
	





@end
