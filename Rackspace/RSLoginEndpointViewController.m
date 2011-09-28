//
//  RSLoginEndpointViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSLoginEndpointViewController.h"

#define kRackspaceUS 0
#define kRackspaceUK 1
#define kCustom 2

@implementation RSLoginEndpointViewController

#pragma mark - Cancel Button

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

#pragma mark - Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case kRackspaceUS:
            cell.textLabel.text = @"Rackspace US";
            break;
        case kRackspaceUK:
            cell.textLabel.text = @"Rackspace UK";
            break;
        case kCustom:
            cell.textLabel.text = @"Custom API Endpoint";
            break;
        default:
            break;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

#pragma mark - Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
