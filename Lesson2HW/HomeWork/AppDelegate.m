//
//  AppDelegate.m
//  HomeWork
//
//  Created by Viktor on 07.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "FactoryServersNetworkWithLinux.h"
#import "MarriageServer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    FactoryDefaultServersNetwork * server1 = [[FactoryDefaultServersNetwork alloc] init];
    [server1 startFactoryServer];
    NSLog(@"%@ %i %@",[server1 creationRaidArray1], [server1 numberHDDinREID], [server1 creationRaidArray2]);
    [server1 installationВуOfTheSoftware];
    
    FactoryServersNetworkWithLinux * server2 = [[FactoryServersNetworkWithLinux alloc] init];
    [server2 startFactoryServer];
    NSLog(@"%@ %i %@",[server2 creationRaidArray1], [server2 numberHDDinREID], [server2 creationRaidArray2]);
    [server2 installationВуOfTheSoftware];
    
    MarriageServer * server3 = [[MarriageServer alloc] init];
    [server3 startFactoryServer];
    NSLog(@"%@ %i %@",[server3 creationRaidArray1], [server3 numberHDDinREID], [server3 creationRaidArray2]);
    [server3 installationВуOfTheSoftware];
    
    
    
    return YES;
}

- (void) someMetod
{
    NSLog(@"Test1");
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

@end
