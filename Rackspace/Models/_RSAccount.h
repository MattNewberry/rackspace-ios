// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSAccount.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSLoadBalancer;
@class RSProvider;
@class RSServer;








@interface RSAccountID : NSManagedObjectID {}
@end

@interface _RSAccount : CKRecord {}




@property (nonatomic, retain) NSNumber *active;


@property BOOL activeValue;
- (BOOL)activeValue;
- (void)setActiveValue:(BOOL)value_;

//- (BOOL)validateActive:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *api_auth_token;


//- (BOOL)validateApi_auth_token:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *api_cdn_url;


//- (BOOL)validateApi_cdn_url:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *api_key;


//- (BOOL)validateApi_key:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *api_server_url;


//- (BOOL)validateApi_server_url:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *username;


//- (BOOL)validateUsername:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSSet* load_balancers;

- (NSMutableSet*)load_balancersSet;




@property (nonatomic, retain) RSProvider* provider;

//- (BOOL)validateProvider:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* servers;

- (NSMutableSet*)serversSet;




@end

@interface _RSAccount (CoreDataGeneratedAccessors)

- (void)addLoad_balancers:(NSSet*)value_;
- (void)removeLoad_balancers:(NSSet*)value_;
- (void)addLoad_balancersObject:(RSLoadBalancer*)value_;
- (void)removeLoad_balancersObject:(RSLoadBalancer*)value_;

- (void)addServers:(NSSet*)value_;
- (void)removeServers:(NSSet*)value_;
- (void)addServersObject:(RSServer*)value_;
- (void)removeServersObject:(RSServer*)value_;

@end

@interface _RSAccount (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveActive;
- (void)setPrimitiveActive:(NSNumber*)value;

- (BOOL)primitiveActiveValue;
- (void)setPrimitiveActiveValue:(BOOL)value_;




- (NSString*)primitiveApi_auth_token;
- (void)setPrimitiveApi_auth_token:(NSString*)value;




- (NSString*)primitiveApi_cdn_url;
- (void)setPrimitiveApi_cdn_url:(NSString*)value;




- (NSString*)primitiveApi_key;
- (void)setPrimitiveApi_key:(NSString*)value;




- (NSString*)primitiveApi_server_url;
- (void)setPrimitiveApi_server_url:(NSString*)value;




- (NSString*)primitiveUsername;
- (void)setPrimitiveUsername:(NSString*)value;





- (NSMutableSet*)primitiveLoad_balancers;
- (void)setPrimitiveLoad_balancers:(NSMutableSet*)value;



- (RSProvider*)primitiveProvider;
- (void)setPrimitiveProvider:(RSProvider*)value;



- (NSMutableSet*)primitiveServers;
- (void)setPrimitiveServers:(NSMutableSet*)value;


@end
