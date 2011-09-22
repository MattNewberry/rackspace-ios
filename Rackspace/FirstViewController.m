//
//  FirstViewController.m
//  Rackspace
//
//  Created by Matt Newberry on 9/9/11.
//  Copyright (c) 2011 MNDCreative, LLC. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    
   
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFormSheet;
    vc.view.backgroundColor = [UIColor clearColor];
    
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 41)];
    textF.keyboardAppearance = UIKeyboardAppearanceAlert;
    [vc.view addSubview:textF];
    [textF becomeFirstResponder];
    
     UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.modalPresentationStyle = UIModalPresentationFormSheet;
    nav.view.backgroundColor = [UIColor clearColor];
    
    [self presentModalViewController:nav animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
