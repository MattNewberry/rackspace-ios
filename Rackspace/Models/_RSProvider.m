// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSProvider.m instead.

#import "_RSProvider.h"

@implementation RSProviderID
@end

@implementation _RSProvider





@dynamic name;






@dynamic id;



- (short)idValue {
	NSNumber *result = [self id];
	return [result shortValue];
}

- (void)setIdValue:(short)value_ {
	[self setId:[NSNumber numberWithShort:value_]];
}

- (short)primitiveIdValue {
	NSNumber *result = [self primitiveId];
	return [result shortValue];
}

- (void)setPrimitiveIdValue:(short)value_ {
	[self setPrimitiveId:[NSNumber numberWithShort:value_]];
}





@dynamic logo;






@dynamic api_auth_url;






@dynamic accounts;

	
- (NSMutableSet*)accountsSet {
	[self willAccessValueForKey:@"accounts"];
	NSMutableSet *result = [self mutableSetValueForKey:@"accounts"];
	[self didAccessValueForKey:@"accounts"];
	return result;
}
	





@end
