//
//  LoggingViewController.h
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Revtwo.h"


@interface LoggingViewController : UIViewController
- (IBAction)doTraceLog:(id)sender;
- (IBAction)doErrorLog:(id)sender;
- (IBAction)doWarningLog:(id)sender;
- (IBAction)doDebugLog:(id)sender;


@end
