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

@implementation RSServersViewController

@synthesize dataSource;

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"Cloud Servers";
    
    self.dataSource = [RSServersDataSource dataSourceForEntity:@"RSServer" andTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    
    [RSServer get:nil completionBlock:^(CKResult *result) {
        
        NSLog(@"response code: %i", result.responseCode);
        
    } errorBlock:^(CKResult *result) {
        
        NSLog(@"error: %@", [result.error description]);
        
    }];
    
}

@end
