//
//  UIDevice+TFDevice.m
//  OC学习笔记
//
//  Created by huodada on 2019/12/12.
//  Copyright © 2019 huodada. All rights reserved.
//

#import "UIDevice+TFDevice.h"

@implementation UIDevice (TFDevice)
+ (void)switchNewOrientation:(UIInterfaceOrientation)interfaceOrientation
{
        
        NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
        
        [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
        
        NSNumber *orientationTarget = [NSNumber numberWithInt:interfaceOrientation];
        
        [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
    
}
@end
