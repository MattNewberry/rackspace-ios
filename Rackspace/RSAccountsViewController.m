//
//  RSAccountsViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/27/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSAccountsViewController.h"
#import "RSAccount.h"

@implementation RSAccountsViewController

- (IBAction)addButtonPressed:(id)sender {
    
    RSAccount *account = [RSAccount blank];
    account.username = @"mike";
    BOOL result = [account save];
    NSLog(@"account saved: %i", result);
    
}

@end
