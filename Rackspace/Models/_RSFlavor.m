// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSFlavor.m instead.

#import "_RSFlavor.h"

@implementation RSFlavorID
@end

@implementation _RSFlavor





@dynamic disk;



- (short)diskValue {
	NSNumber *result = [self disk];
	return [result shortValue];
}

- (void)setDiskValue:(short)value_ {
	[self setDisk:[NSNumber numberWithShort:value_]];
}

- (short)primitiveDiskValue {
	NSNumber *result = [self primitiveDisk];
	return [result shortValue];
}

- (void)setPrimitiveDiskValue:(short)value_ {
	[self setPrimitiveDisk:[NSNumber numberWithShort:value_]];
}





@dynamic id;






@dynamic name;






@dynamic ram;



- (short)ramValue {
	NSNumber *result = [self ram];
	return [result shortValue];
}

- (void)setRamValue:(short)value_ {
	[self setRam:[NSNumber numberWithShort:value_]];
}

- (short)primitiveRamValue {
	NSNumber *result = [self primitiveRam];
	return [result shortValue];
}

- (void)setPrimitiveRamValue:(short)value_ {
	[self setPrimitiveRam:[NSNumber numberWithShort:value_]];
}





@dynamic servers;

	
- (NSMutableSet*)serversSet {
	[self willAccessValueForKey:@"servers"];
	NSMutableSet *result = [self mutableSetValueForKey:@"servers"];
	[self didAccessValueForKey:@"servers"];
	return result;
}
	





@end
