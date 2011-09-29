//
//  UIViewController+Conveniences.h
//
//  Created by Mike Mayo on 7/21/10.
//

#import <Foundation/Foundation.h>

@class OpenStackRequest;

@interface UIViewController (Conveniences) <UIAlertViewDelegate>

-(void)cancelButtonPressed:(id)sender;
- (void)addCancelButton;
- (void)addSaveButton;
- (void)addAddButton;
- (void)addDoneButton;
- (void)addNextButton;
- (void)presentModalViewControllerWithNavigation:(UIViewController *)viewController animated:(BOOL)animated;
- (void)presentModalViewControllerWithNavigation:(UIViewController *)viewController;
- (void)alert:(NSString *)title message:(NSString *)message;
- (void)alert:(NSString *)message;

@end
