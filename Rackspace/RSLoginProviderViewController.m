//
//  RSLoginEndpointViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSLoginProviderViewController.h"
#import "RSLoginDetailsViewController.h"
#import "RSProvidersDataSource.h"
#import "RSProvider.h"

#define kShowLoginDetails @"ShowLoginDetails"

@implementation RSLoginProviderViewController

@synthesize dataSource;

#pragma mark - Cancel Button

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - Delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:kShowLoginDetails]) {
        
        RSLoginDetailsViewController *vc = [segue destinationViewController];
        vc.provider = selectedProvider;
        
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    selectedProvider = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];
    [self performSegueWithIdentifier:kShowLoginDetails sender:nil];
    
}

@end
