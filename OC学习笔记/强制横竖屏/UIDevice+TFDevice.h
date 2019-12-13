//
//  UIDevice+TFDevice.h
//  OC学习笔记
//
//  Created by huodada on 2019/12/12.
//  Copyright © 2019 huodada. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (TFDevice)
/**
 * @interfaceOrientation 输入要强制转屏的方向
 */
+ (void)switchNewOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end

NS_ASSUME_NONNULL_END
