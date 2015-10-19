//
//  TutorialTableViewController.m
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import "TutorialTableViewController.h"

@interface TutorialTableViewController ()

@end

@implementation TutorialTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Tutorials";
    UIImage* logoImage = [UIImage imageNamed:@"logo_black_sm.png"];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:logoImage];
    
    
    self.tutorials = [NSArray arrayWithObjects:
                      @"Logging",
                      @"File Browsing",
                      @"SQLite Database",
                      //@"Chat",
                      @"Create New Ticket", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.tutorials count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tutorialCell" forIndexPath:indexPath];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tutorialCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tutorialCell"];
    }
    cell.textLabel.text = [self.tutorials objectAtIndex:indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *tutorial = [self.tutorials objectAtIndex:indexPath.row];
    
    //Logging
    if ([tutorial isEqualToString:@"Logging"]) {
        LoggingViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Logging"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //FileBrowser
    else if ([tutorial isEqualToString:@"File Browsing"]) {
        FileBrowserViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"FileBrowser"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    //DatabaseBrowser
    else if ([tutorial isEqualToString:@"SQLite Database"]) {
        SQLiteBrowserViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DatabaseBrowser"];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    //newTicket
    else if ([tutorial isEqualToString:@"Create New Ticket"]){
        R2NewTicketViewController *vc = [[R2NewTicketViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
        
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
