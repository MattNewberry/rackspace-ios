//
//  CKRecord+Rackspace.m
//  Rackspace
//
//  Created by Michael Mayo on 10/10/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "CKRecord+Rackspace.h"
#import "RSAccount.h"

@implementation CKRecord (Rackspace)

+ (CKRequest *)serversAPIRequestForGet {

    CKRequest *request = [self requestForGet];
    
    // cache busting
    [request.parameters setObject:[[NSDate date] description] forKey:@"now"];
    [request addRackspaceHeaders];
    
    return request;    
    
}


@end
