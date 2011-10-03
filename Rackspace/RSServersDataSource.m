//
//  RSServersDataSource.m
//  Rackspace
//
//  Created by Michael Mayo on 9/30/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSServersDataSource.h"
#import "RSServer.h"
#import "RSAccount.h"

@implementation RSServersDataSource

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath withObject:(id)object {
    
    RSServer *server = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = server.name;
    
}

@end
