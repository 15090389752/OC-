//
//  ViewController.m
//  OC学习笔记
//
//  Created by huodada on 2019/12/2.
//  Copyright © 2019 huodada. All rights reserved.
//

#import "ViewController.h"
//#import "UILabel+Mylabel.h"
#import "UIDevice+TFDevice.h"
#import "LLToast.h"
#import "AppDelegate.h"
#import "AlipayManager.h"
#define iphoneX ([[UIApplication sharedApplication] statusBarFrame].size.height>20?YES:NO)
#define kNavBarHeight (iphoneX ? 88.0 : 64.0)

#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)showBtn:(id)sender {
//    [LLToast showWithText:@"nilao" duration:2.0];
    
//    FirstViewController *firstVC = [[FirstViewController alloc]init];
//    [self.navigationController pushViewController:firstVC animated:YES];
    
    [[AlipayManager sharedManager]aliPay:@"nihao" block:^(BOOL YESOrNO) {
        NSLog(@"YESOrNO === %d", YESOrNO);
    }];
    
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
  

   
   
}




@end
