//
//  emailButtonViewController.m
//  emailButton
//
//  Created by Admin on 1/28/14.
//  Copyright (c) 2014 Natacha Springer. All rights reserved.
//

#import "emailButtonViewController.h"
#import <MessageUI/MessageUI.h>

@interface emailButtonViewController ()

@end

@implementation emailButtonViewController

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

- (IBAction)showEmail:(id)sender {
    NSString *emailTitle = @"Test Email";
    // Email Content
    NSString *messageBody = @"iOS programming is so hard Jack!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"nitroglycerine_1977@yahoo.com"];
    
    MFMailComposeViewController *mc =[[MFMailComposeViewController alloc] init];
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
    
    
    
    
    
    
    
    
    
    






@end
