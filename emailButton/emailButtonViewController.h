//
//  emailButtonViewController.h
//  emailButton
//
//  Created by Admin on 1/28/14.
//  Copyright (c) 2014 Natacha Springer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface emailButtonViewController : UIViewController
@property(nonatomic,assign) id<MFMailComposeViewControllerDelegate> mailComposeDelegate;
- (IBAction)showEmail:(id)sender;

@end
