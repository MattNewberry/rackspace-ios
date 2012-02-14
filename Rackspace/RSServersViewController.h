//
//  RSServersViewController.h
//  Rackspace
//
//  Created by Michael Mayo on 9/30/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSServersDataSource;

@interface RSServersViewController : UITableViewController

@property (nonatomic, strong) RSServersDataSource *dataSource;

@end
