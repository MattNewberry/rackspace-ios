//
//  UIViewController+Conveniences.m
//
//  Created by Mike Mayo on 7/21/10.
//

#import "UIViewController+Conveniences.h"

#define kUpcoming 0
#define kAllEvents 1

@implementation UIViewController (Conveniences)

-(void)cancelButtonPressed:(id)sender {
	[self dismissModalViewControllerAnimated:YES];
}

- (void)addCancelButton {
    UIBarButtonItem *cancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonPressed:)];
    self.navigationItem.leftBarButtonItem = cancel;
}

- (void)addSaveButton {
    UIBarButtonItem *save = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveButtonPressed:)];
    self.navigationItem.rightBarButtonItem = save;
}

- (void)addAddButton {
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    self.navigationItem.rightBarButtonItem = add;
}

- (void)addDoneButton {
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneButtonPressed:)];
    self.navigationItem.rightBarButtonItem = done;
}

- (void)addNextButton {
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(nextButtonPressed:)];
    self.navigationItem.rightBarButtonItem = next;
}

- (void)presentModalViewControllerWithNavigation:(UIViewController *)viewController animated:(BOOL)animated {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        nav.modalPresentationStyle = UIModalPresentationFormSheet;
        nav.navigationBar.barStyle = UIBarStyleBlack;
        nav.navigationBar.opaque = NO;
    } else {
        nav.navigationBar.tintColor = self.navigationController.navigationBar.tintColor;
        nav.navigationBar.translucent = self.navigationController.navigationBar.translucent;
        nav.navigationBar.opaque = self.navigationController.navigationBar.opaque;
        nav.navigationBar.barStyle = self.navigationController.navigationBar.barStyle;    
    }
    
    [self.navigationController presentModalViewController:nav animated:animated];
}

- (void)presentModalViewControllerWithNavigation:(UIViewController *)viewController {
    [self presentModalViewControllerWithNavigation:viewController animated:YES];
}

- (void)alert:(NSString *)title message:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];
}

- (void)alert:(NSString *)message {
    [self alert:nil message:message];
}

- (void)alert:(NSString *)message result:(CKResult *)result {
    [self alert:nil message:message];
}

@end
