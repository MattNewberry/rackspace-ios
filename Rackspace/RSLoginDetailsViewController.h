//
//  RSLoginDetailsViewController.h
//  Rackspace
//
//  Created by Michael Mayo on 9/28/11.
//  Copyright (c) 2011 Rackspace, US Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSProvider;

@interface RSLoginDetailsViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) RSProvider *provider;
@property (nonatomic, strong) IBOutlet UITextField *usernameTextField;
@property (nonatomic, strong) IBOutlet UITextField *apiKeyTextField;

- (IBAction)loginButtonPressed:(id)sender;

@end
