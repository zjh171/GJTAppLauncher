//
//  GJTAppDelegate+Head.m
//  GJTAppLauncher_Example
//
//  Created by kyson on 2021/4/11.
//  Copyright © 2021 zjh171. All rights reserved.
//

#import "GJTAppDelegate+Head.h"
#import <GJTAppLauncher/GJTAppLauncher.h>

@LauncherHeadTask(GJTAppDelegate,setAppId);

@implementation GJTAppDelegate(Head)


+(void)setAppId {
    NSLog(@"这里设置 APP ID");
}



@end
