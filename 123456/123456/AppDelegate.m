//
//  AppDelegate.m
//  123456
//
//  Created by 仝兴伟 on 2017/6/21.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "AppDelegate.h"
#import "ProxyConfHelper.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    
#pragma mark --
    NSUserDefaults *defaultss = [NSUserDefaults standardUserDefaults];
    [defaultss setInteger:1090 forKey:@"PacServer.ListenPort"];
    [ProxyConfHelper install];
    [ProxyConfHelper startMonitorPAC];
    
    [ProxyConfHelper enablePACProxy];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
