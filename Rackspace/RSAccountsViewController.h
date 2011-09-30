//
//  RSAccountsViewController.h
//  Rackspace
//
//  Created by Michael Mayo on 9/27/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSAccountsDataSource;

@interface RSAccountsViewController : UITableViewController

@property (nonatomic, strong) RSAccountsDataSource *dataSource;

@end
