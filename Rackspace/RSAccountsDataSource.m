//
//  RSAccountsDataSource.m
//  Rackspace
//
//  Created by Michael Mayo on 9/27/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSAccountsDataSource.h"
#import "RSAccount.h"

@implementation RSAccountsDataSource

- (Class)entityClass {
    return [RSAccount class];
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath withObject:(id)object {

    RSAccount *account = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = account.username;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
}

@end
