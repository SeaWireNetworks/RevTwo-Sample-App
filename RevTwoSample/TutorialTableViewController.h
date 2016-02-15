//
//  TutorialTableViewController.h
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoggingViewController.h"
#import "FileBrowserViewController.h"
#import "SQLiteBrowserViewController.h"
#import "R2NewTicketViewController.h"
#import "R2CommunityTableViewController.h"

@interface TutorialTableViewController : UITableViewController

@property NSArray *tutorials;
@property BOOL pickedTutorial;

@end
