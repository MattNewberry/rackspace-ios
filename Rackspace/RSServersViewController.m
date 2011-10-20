//
//  RSServersViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/30/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSServersViewController.h"
#import "RSServersDataSource.h"
#import "UIViewController+Conveniences.h"
#import "RSAccount.h"

@implementation RSServersViewController

@synthesize dataSource;

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"Cloud Servers";
    
    self.dataSource = [RSServersDataSource dataSourceForEntity:@"RSServer" andTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    
    [RSServer get];
    [RSFlavor get:nil completionBlock:^(CKResult *result) {
    } errorBlock:nil];
    [RSImage get:nil completionBlock:nil errorBlock:nil];
    
    NSLog(@"%@", [RSFlavor all]);
    NSLog(@"%@", [RSServer all]);
    NSLog(@"%@", [RSImage all]);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

//    RSServer *server = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];
//    [self alert:$S(@"%@", [server serialize])];
    
    /*
    RSServer *server = [RSServer blank];
    server.name = @"ck-test";
    server.flavorId = [[RSFlavor first] id];
    server.imageId = [[RSImage first] id];

    [server post:nil completionBlock:^(CKResult *result) {
        
        NSLog(@"response code %i: %@", result.responseCode, [[NSString alloc] initWithData:result.responseBody encoding:NSUTF8StringEncoding]);        
        
        if ([result isSuccess]) {            
            [self alert:@"success!"];            
        } else {
            [self alert:@"fail in completionBlock!"];
            [server remove];
        }
        
    } errorBlock:^(CKResult *result) {
        
        NSLog(@"response code %i: %@", result.responseCode, [[NSString alloc] initWithData:result.responseBody encoding:NSUTF8StringEncoding]);        
        [self alert:@"fail in errorBlock!"];
        [server remove];
        
    }];
     */
    /*
    RSServer *server = [self.dataSource.fetchedResultsController objectAtIndexPath:indexPath];

    [server softRebootWithSuccess:^{
        
        [self alert:@"reboot successful"];
        
    } failure:^(CKResult *result) {        
        
        [self alert:@"There was a problem rebooting your server."];
        NSLog(@"response code: %i", result.responseCode);
        
    }];
    */
    
}

@end
