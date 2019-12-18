//
//  UserHeader.h
//  Driver
//
//  Created by clack on 2019/6/26.
//  Copyright © 2019 huodada. All rights reserved.
//

#ifndef UserHeader_h
#define UserHeader_h


#define iphoneX                    ([[UIApplication sharedApplication] statusBarFrame].size.height>20?YES:NO)
#define kStatuBarHeight            ([[UIApplication sharedApplication] statusBarFrame].size.height)
#define kNavBarHeight              (iphoneX ? 88.0 : 64.0)
#define kTabBarHeight              (iphoneX ? 83.0 : 49.0)
#define kBottomBarHeight           (iphoneX ? 34.0 : 0)
#define kScreenHeight              [UIScreen mainScreen].bounds.size.height
#define kScreenWidth               [UIScreen mainScreen].bounds.size.width
#define kContentHeight              (kScreenHeight - kNavBarHeight - kTabBarHeight)

//RGB
#define RGBACOLOR(a,b,c,d) [UIColor colorWithRed:(a/255.0) green:(b/255.0) blue:(c/255.0) alpha:(d)]
//常用背景颜色
#define USEBACKGROUNDCOLOR  RGBACOLOR(235,235,235,1)
//屏幕宽
#define SCREENWIDE CGRectGetWidth([UIScreen mainScreen].bounds)
//屏幕高
#define SCREENHEIGHT  CGRectGetHeight([UIScreen mainScreen].bounds)
//常用导航栏颜色
#define USENAVBACKGROUNDCOLOR  RGBACOLOR(40,179,124,1)

/**************NSUserDefaults*****************/
// 本地存储对象
#define UDStoreValueforKey(value, key) [[NSUserDefaults standardUserDefaults] setObject:value forKey:key]
// 获取本地存储对象
#define UDObjectWithKey(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]
//移除本地存储
#define UDRemoveWithKey(key) [[NSUserDefaults standardUserDefaults] removeObjectForKey:key]
//UD有时无法存储，需要3
#define UDSync  [[NSUserDefaults standardUserDefaults] synchronize]

//日志输出,relese模式下不打印输出
#if DEBUG
#define DebugLog(fmt, ...)  printf("\n[%s] %s [第%d行] %s\n", __TIME__, __FUNCTION__, __LINE__, [[NSString stringWithFormat:fmt, ## __VA_ARGS__] UTF8String])
#else
#define DebugLog(fmt, ... )
#endif


#endif /* UserHeader_h */
