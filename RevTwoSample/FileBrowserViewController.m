//
//  FileBrowserViewController.m
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import "FileBrowserViewController.h"

@interface FileBrowserViewController ()

@end

@implementation FileBrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"File Browser";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    self.filePathsArray = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:documentsDirectory  error:nil];
    NSMutableArray *tempListing = [NSMutableArray arrayWithArray:self.filePathsArray];
    [tempListing removeObject:@"revtwo.db"];
    self.filePathsArray = tempListing;
    
    UIBarButtonItem *refresh = [[UIBarButtonItem alloc] initWithTitle:@"refresh" style:UIBarButtonItemStylePlain target:self action:@selector(refreshTableView)];
    self.navigationItem.rightBarButtonItem = refresh;
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

-(void) refreshTableView{
    
    //get files
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    self.filePathsArray = [[NSFileManager defaultManager] subpathsOfDirectoryAtPath:documentsDirectory  error:nil];
    NSMutableArray *tempListing = [NSMutableArray arrayWithArray:self.filePathsArray];
    [tempListing removeObject:@"revtwo.db"];
    self.filePathsArray = tempListing;
    
    //refresh table
    [self.tableview reloadData];
    
}
#pragma mark - UITableViewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.filePathsArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"filecell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"filecell"];
    }
    
    cell.textLabel.text = [self.filePathsArray objectAtIndex:indexPath.row];
    return cell;
}

@end
