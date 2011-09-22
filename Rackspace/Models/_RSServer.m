// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServer.m instead.

#import "_RSServer.h"

@implementation RSServerID
@end

@implementation _RSServer





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






@dynamic status;






@dynamic hostId;






@dynamic shared_ip_group;

	

@dynamic account;

	

@dynamic backup_schedule;

	

@dynamic addresses;

	
- (NSMutableSet*)addressesSet {
	[self willAccessValueForKey:@"addresses"];
	NSMutableSet *result = [self mutableSetValueForKey:@"addresses"];
	[self didAccessValueForKey:@"addresses"];
	return result;
}
	

@dynamic image;

	

@dynamic metadata;

	
- (NSMutableSet*)metadataSet {
	[self willAccessValueForKey:@"metadata"];
	NSMutableSet *result = [self mutableSetValueForKey:@"metadata"];
	[self didAccessValueForKey:@"metadata"];
	return result;
}
	

@dynamic flavor;

	





@end
