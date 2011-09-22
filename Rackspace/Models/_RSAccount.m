// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSAccount.m instead.

#import "_RSAccount.h"

@implementation RSAccountID
@end

@implementation _RSAccount





@dynamic api_server_url;






@dynamic username;






@dynamic api_auth_token;






@dynamic active;



- (BOOL)activeValue {
	NSNumber *result = [self active];
	return [result boolValue];
}

- (void)setActiveValue:(BOOL)value_ {
	[self setActive:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveActiveValue {
	NSNumber *result = [self primitiveActive];
	return [result boolValue];
}

- (void)setPrimitiveActiveValue:(BOOL)value_ {
	[self setPrimitiveActive:[NSNumber numberWithBool:value_]];
}





@dynamic api_cdn_url;






@dynamic api_key;






@dynamic servers;

	
- (NSMutableSet*)serversSet {
	[self willAccessValueForKey:@"servers"];
	NSMutableSet *result = [self mutableSetValueForKey:@"servers"];
	[self didAccessValueForKey:@"servers"];
	return result;
}
	

@dynamic provider;

	

@dynamic load_balancers;

	
- (NSMutableSet*)load_balancersSet {
	[self willAccessValueForKey:@"load_balancers"];
	NSMutableSet *result = [self mutableSetValueForKey:@"load_balancers"];
	[self didAccessValueForKey:@"load_balancers"];
	return result;
}
	





@end
