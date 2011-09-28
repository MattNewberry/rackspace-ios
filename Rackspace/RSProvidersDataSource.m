//
//  RSProvidersDataSource.m
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSProvidersDataSource.h"
#import "RSProvider.h"

@implementation RSProvidersDataSource

- (Class)entityClass {
    return [RSProvider class];
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath withObject:(id)object {
    
    RSProvider *provider = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = provider.name;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
}

@end
