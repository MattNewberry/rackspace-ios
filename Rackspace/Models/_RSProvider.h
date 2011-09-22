// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to RSProvider.h instead.

#import <CoreData/CoreData.h>
#import "CKRecord.h"

@class RSAccount;






@interface RSProviderID : NSManagedObjectID {}
@end

@interface _RSProvider : CKRecord {}




@property (nonatomic, strong) NSString *name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber *id;


@property short idValue;
- (short)idValue;
- (void)setIdValue:(short)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *logo;


//- (BOOL)validateLogo:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString *api_auth_url;


//- (BOOL)validateApi_auth_url:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* accounts;

- (NSMutableSet*)accountsSet;




@end

@interface _RSProvider (CoreDataGeneratedAccessors)

- (void)addAccounts:(NSSet*)value_;
- (void)removeAccounts:(NSSet*)value_;
- (void)addAccountsObject:(RSAccount*)value_;
- (void)removeAccountsObject:(RSAccount*)value_;

@end

@interface _RSProvider (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (short)primitiveIdValue;
- (void)setPrimitiveIdValue:(short)value_;




- (NSString*)primitiveLogo;
- (void)setPrimitiveLogo:(NSString*)value;




- (NSString*)primitiveApi_auth_url;
- (void)setPrimitiveApi_auth_url:(NSString*)value;





- (NSMutableSet*)primitiveAccounts;
- (void)setPrimitiveAccounts:(NSMutableSet*)value;


@end
