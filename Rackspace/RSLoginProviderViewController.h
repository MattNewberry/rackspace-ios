//
//  RSLoginEndpointViewController.h
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSProvidersDataSource, RSProvider;

@interface RSLoginProviderViewController : UITableViewController {
    @private
    RSProvider *selectedProvider;
}

@property (nonatomic, strong) IBOutlet RSProvidersDataSource *dataSource;

- (IBAction)cancelButtonPressed:(id)sender;

@end
