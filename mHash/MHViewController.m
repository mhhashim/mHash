//
//  MHViewController.m
//  mHash
//
//  Created by Hashim MH on 22/05/13.
//  Copyright (c) 2013 Hashim MH. All rights reserved.
//

#import "MHViewController.h"
#import "MHWebViewController.h"
@interface MHViewController ()

@end

@implementation MHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
 
    [super viewDidUnload];
}
- (IBAction)enterButtonPressed:(id)sender {
    MHWebViewController *webVC;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        
        webVC=[[MHWebViewController alloc]initWithNibName:@"MHWebViewController" bundle:nil];

    }
    else{
        webVC=[[MHWebViewController alloc]initWithNibName:@"MHWebViewController_iPad" bundle:nil];
    }
    
    [self presentModalViewController:webVC animated:YES];

}
@end
