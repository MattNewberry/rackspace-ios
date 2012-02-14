// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSServer.m instead.

#import "_RSServer.h"

@implementation RSServerID
@end

@implementation _RSServer





@dynamic flavorId;






@dynamic hostId;






@dynamic id;






@dynamic imageId;






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






@dynamic account;

	

@dynamic addresses;

	
- (NSMutableSet*)addressesSet {
	[self willAccessValueForKey:@"addresses"];
	NSMutableSet *result = [self mutableSetValueForKey:@"addresses"];
	[self didAccessValueForKey:@"addresses"];
	return result;
}
	

@dynamic backup_schedule;

	

@dynamic flavor;

	

@dynamic image;

	

@dynamic metadata;

	
- (NSMutableSet*)metadataSet {
	[self willAccessValueForKey:@"metadata"];
	NSMutableSet *result = [self mutableSetValueForKey:@"metadata"];
	[self didAccessValueForKey:@"metadata"];
	return result;
}
	

@dynamic shared_ip_group;

	





@end
