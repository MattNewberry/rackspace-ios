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

@implementation RSAccountsViewController

@synthesize dataSource;

- (void)viewDidLoad {

    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
//    RSAccount *fake = [RSAccount blank];
//    fake.username = @"mike";
//    fake.api_key = @"8bd642735860c898d27677a32c322a60";
//    fake.provider = [[RSProvider all] objectAtIndex:0];
//    [fake save];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RSAccount *account = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];
    NSLog(@"account: %@", account);
    
}

@end
