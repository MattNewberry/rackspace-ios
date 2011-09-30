//
//  RSAccountsViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/27/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSAccountsViewController.h"
#import "RSAccountsDataSource.h"
#import "RSAccount.h"
#import "RSProvider.h"

#define kShowAccountHome @"ShowAccountHome"

@implementation RSAccountsViewController

@synthesize dataSource;

#pragma mark - View Lifecycle

- (void)viewDidLoad {

    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RSAccount *account = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];
    [account activate];
    
    [self performSegueWithIdentifier:kShowAccountHome sender:nil];
    
}

@end
