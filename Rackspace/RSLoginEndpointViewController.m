//
//  RSLoginEndpointViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSLoginEndpointViewController.h"
#import "RSProvider.h"

@implementation RSLoginEndpointViewController

@synthesize dataSource;

#pragma mark - Cancel Button

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
