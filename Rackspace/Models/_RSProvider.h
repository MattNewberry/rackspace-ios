// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSProvider.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSAccount;






@interface RSProviderID : NSManagedObjectID {}
@end

@interface _RSProvider : CKRecord {}




@property (nonatomic, retain) NSString *api_auth_url;


//- (BOOL)validateApi_auth_url:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *id;


//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *logo;


//- (BOOL)validateLogo:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, retain) NSSet* accounts;

- (NSMutableSet*)accountsSet;




@end

@interface _RSProvider (CoreDataGeneratedAccessors)

- (void)addAccounts:(NSSet*)value_;
- (void)removeAccounts:(NSSet*)value_;
- (void)addAccountsObject:(RSAccount*)value_;
- (void)removeAccountsObject:(RSAccount*)value_;

@end

@interface _RSProvider (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveApi_auth_url;
- (void)setPrimitiveApi_auth_url:(NSString*)value;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveLogo;
- (void)setPrimitiveLogo:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (NSMutableSet*)primitiveAccounts;
- (void)setPrimitiveAccounts:(NSMutableSet*)value;


@end
