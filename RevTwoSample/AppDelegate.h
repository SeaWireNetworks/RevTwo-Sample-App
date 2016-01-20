//
//  AppDelegate.h
//  RevTwoSample
//
//  Created by Ashley Calder on 9/1/15.
//  Copyright (c) 2015 RevTwo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <PushKit/PushKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, PKPushRegistryDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

