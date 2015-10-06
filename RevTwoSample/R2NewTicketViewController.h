//
//  R2NewTicketViewController.h
//  R2-ios-pod
//
//  Created by Ashley Calder on 10/5/15.
//  Copyright © 2015 Revtwo.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Revtwo.h"

@interface R2NewTicketViewController : UIViewController <UIAlertViewDelegate, UITextViewDelegate, UIGestureRecognizerDelegate, UITextFieldDelegate>
//text fields
@property UITextField *nameField;
@property UITextField *emailField;
@property UITextField *phoneField;
@property UITextView *descriptionField;
@property UIBarButtonItem *submitButton;

@end
