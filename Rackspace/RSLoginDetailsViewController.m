//
//  RSLoginDetailsViewController.m
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import "RSLoginDetailsViewController.h"
#import "RSProvider.h"
#import "RSAccount.h"
#import "UIViewController+Conveniences.h"

@implementation RSLoginDetailsViewController

@synthesize provider, usernameTextField, apiKeyTextField;

#pragma mark - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];

    if ([textField isEqual:self.usernameTextField]) {
        
        [self.apiKeyTextField becomeFirstResponder];
        
    } else if ([textField isEqual:self.apiKeyTextField]) {
        
        [self loginButtonPressed:nil];
        
    }
    
    return NO;
    
}

#pragma mark - Login Button

- (IBAction)loginButtonPressed:(id)sender {
    
    // this is obviously temporary until we decide on UI for this :)
    self.navigationItem.title = @"Authenticating...";

    RSAccount *account = [RSAccount blank];
    account.provider = self.provider;
    account.username = self.usernameTextField.text;
    account.api_key = self.apiKeyTextField.text;
    
    [account authenticate:^(CKResult *result) {
        
        [self alert:@"login succeeded"];
        NSLog(@"success! %i %@", result.responseCode, [result responseBody]);
        [self dismissModalViewControllerAnimated:YES];
        
    } errorBlock:^(CKResult *result) {

        NSLog(@"failure! %i %@", result.responseCode, [result responseBody]);
        [self alert:@"login failed"];
        
    }];
    
}

@end
