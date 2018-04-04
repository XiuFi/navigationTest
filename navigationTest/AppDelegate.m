//
//  AppDelegate.m
//  navigationTest
//
//  Created by monda on 2018/4/2.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "AppDelegate.h"
#import "VC1.h"
#import "VC3.h"
@interface AppDelegate ()
@property(strong,nonatomic)VC3 *vc3;
@end

@implementation AppDelegate
-(VC3 *)vc3{
    if (!_vc3) {
        _vc3 = [VC3 new];
    }
    return _vc3;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [UIWindow new];
    
    VC1 * vc = [VC1 new];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    
//      [[[[UIApplication sharedApplication] delegate] window] addSubview:self.vc3.view];
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}





@end
