//
//  LoggingViewController.m
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import "LoggingViewController.h"

@interface LoggingViewController ()

@end

@implementation LoggingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Logging";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - IBAction

- (IBAction)doTraceLog:(id)sender {
    R2Trace(@"Trace Log Message");
}

- (IBAction)doErrorLog:(id)sender {
    R2Error(@"Error Log Message");
}

- (IBAction)doWarningLog:(id)sender {
    R2Warn(@"Warning Log Message");
}

- (IBAction)doDebugLog:(id)sender {
    R2Debug(@"Debug Log Message");
}
@end
