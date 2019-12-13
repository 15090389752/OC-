//
//  FirstViewController.m
//  OC学习笔记
//
//  Created by huodada on 2019/12/12.
//  Copyright © 2019 huodada. All rights reserved.
//

#import "FirstViewController.h"
#import "UIDevice+TFDevice.h"
#import "AppDelegate.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //禁用侧滑手势方法
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
          //允许转成横屏
    appDelegate.allowRotation = YES;
          //调用横屏代码
    [UIDevice switchNewOrientation:UIInterfaceOrientationLandscapeRight];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //禁用侧滑手势方法
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
          //允许转成横屏
    appDelegate.allowRotation = NO;
          //调用横屏代码
    [UIDevice switchNewOrientation:UIInterfaceOrientationPortrait];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
