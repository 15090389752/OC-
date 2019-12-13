//
//  AppDelegate.h
//  OC学习笔记
//
//  Created by huodada on 2019/12/2.
//  Copyright © 2019 huodada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 * 是否允许转向
 */
@property(nonatomic,assign)BOOL allowRotation;

@end

