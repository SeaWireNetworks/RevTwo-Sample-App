//
//  AppDelegate.m
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import "AppDelegate.h"
#import "Revtwo.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /////////////////////////////////////////////////////////////////////////////////
    //add your RevTwo product key and secret key here
    /////////////////////////////////////////////////////////////////////////////////
    R2Initialize(@"ADD YOUR KEY HERE",@"ADD YOUR PRIVATE KEY HERE", R2MODE_DEVELOPMENT);
    
    //customizations
    Revtwo *customizer = [[Revtwo alloc] init];
    [customizer R2customize_incomingCall_text:@"Incoming call from RevTwo Support"];
    [customizer R2customize_incomingCall_backgroundColor:[UIColor colorWithRed:177/255.0f green:193/255.0f blue:209/255.0f alpha:1] gradientOn:YES];
    [customizer R2customize_incomingCall_textColor:[UIColor blackColor]];
    [customizer R2customize_incomingCall_image:[UIImage imageNamed:@"R2logo.png"]];
    
    //Adding files for file browser
    BOOL success;
    NSError *error;
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    NSString *imagesPath = [documentsDirectory stringByAppendingPathComponent:@"/images"];
    NSString *filePath;
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:imagesPath])
        [[NSFileManager defaultManager] createDirectoryAtPath:imagesPath withIntermediateDirectories:NO attributes:nil error:&error];
    
    filePath = [imagesPath stringByAppendingPathComponent:@"bear.jpg"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"bear" ofType:@"jpg"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [imagesPath stringByAppendingPathComponent:@"macaw.jpg"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"macaw" ofType:@"jpg"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [imagesPath stringByAppendingPathComponent:@"mountain.jpg"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"mountain" ofType:@"jpg"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [imagesPath stringByAppendingPathComponent:@"reef.jpg"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"reef" ofType:@"jpg"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [imagesPath stringByAppendingPathComponent:@"tiger.jpg"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"tiger" ofType:@"jpg"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [documentsDirectory stringByAppendingPathComponent:@"sample.pdf"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"pdf"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [documentsDirectory stringByAppendingPathComponent:@"sample.db"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"db"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    filePath = [documentsDirectory stringByAppendingPathComponent:@"catalog.db"];
    success = [fileManager fileExistsAtPath:filePath];
    if (!success) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"catalog" ofType:@"db"];
        success = [fileManager copyItemAtPath:path toPath:filePath error:&error];
    }
    
    
    /*
     * NOTIFICATIONS
     */
    [self setupVOIP];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}







/*
 * VOIP
 */
-(void)setupVOIP{
    // Create a push registry object
    PKPushRegistry * voipRegistry = [[PKPushRegistry alloc] initWithQueue: dispatch_get_main_queue()];
    // Set the registry's delegate to self
    voipRegistry.delegate = self;
    // Set the push type to VoIP
    voipRegistry.desiredPushTypes = [NSSet setWithObject:PKPushTypeVoIP];
}



/*
 * PKPushRegistryDelegate
 */
// Handle updated push credentials
- (void)pushRegistry:(PKPushRegistry *)registry didUpdatePushCredentials: (PKPushCredentials *)credentials forType:(NSString *)type {
    R2Trace(@"update apns token");
    R2UpdatePushCredentials(credentials.token);
}



// Handle incoming pushes
- (void)pushRegistry:(PKPushRegistry *)registry didReceiveIncomingPushWithPayload:(PKPushPayload *)payload forType:(NSString *)type {
    // Process the received push
    R2Trace(@"got push notification");
    R2ReceivedNotification();
}

@end
