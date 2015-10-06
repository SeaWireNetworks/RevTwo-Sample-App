//
//  FileBrowserViewController.h
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FileBrowserViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property NSArray *filePathsArray;

@end
