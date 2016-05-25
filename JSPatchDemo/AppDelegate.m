//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by aoliday on 10/15/15.
//  Copyright (c) 2015 aoliday. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ALExecuteJSPatch;
    
    return YES;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    UIView *view = [self boardView];
    
    [self.window addSubview:view];
}

- (UIView *)boardView
{
    UILabel *label = [UILabel new];
    label.text = @"1";
    label.frame = CGRectMake(100, 100, 200, 200);
    label.backgroundColor = [UIColor grayColor];
    NSLog(@"调用原生的boardView方法.");
    return label;
    return [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
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

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
