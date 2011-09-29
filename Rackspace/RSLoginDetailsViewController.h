//
//  RSLoginDetailsViewController.h
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSProvider;

@interface RSLoginDetailsViewController : UIViewController

@property (nonatomic, strong) RSProvider *provider;

@end
