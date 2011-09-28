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

@implementation RSAccountsViewController

@synthesize dataSource;

- (void)viewDidLoad {

    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RSAccount *account = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];
    NSLog(@"account: %@", account);
    
}

@end
