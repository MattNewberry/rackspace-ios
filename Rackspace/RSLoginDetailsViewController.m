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

@implementation RSLoginDetailsViewController

@synthesize provider, usernameTextField, apiKeyTextField;

#pragma mark - Text Field Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];

    if ([textField isEqual:self.usernameTextField]) {
        
        [self.apiKeyTextField becomeFirstResponder];
        
    } else if ([textField isEqual:self.apiKeyTextField]) {
        
        NSLog(@"login1");
        
        [self.provider validate:self.usernameTextField.text password:self.apiKeyTextField.text];
        
    }
    
    return NO;
    
}

#pragma mark - Login Button

- (IBAction)loginButtonPressed:(id)sender {
    
    [self dismissModalViewControllerAnimated:YES];
    
}

@end
