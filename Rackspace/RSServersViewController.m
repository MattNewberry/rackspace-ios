//
//  RSServersViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/30/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSServersViewController.h"
#import "RSServersDataSource.h"
#import "RSServer.h"
#import "RSAccount.h"
#import "UIViewController+Conveniences.h"

@implementation RSServersViewController

@synthesize dataSource;

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"Cloud Servers";
    
    self.dataSource = [RSServersDataSource dataSourceForEntity:@"RSServer" andTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    
    [RSServer get];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RSServer *server = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];

    [server softRebootWithSuccess:^{
        
        [self alert:@"reboot successful"];
        
    } failure:^(CKResult *result) {        
        
        [self alert:@"There was a problem rebooting your server."];
        NSLog(@"response code: %i", result.responseCode);
        
    }];
    
}

@end
