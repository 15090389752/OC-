//
//  AlipayManager.h
//  squirrelcheck
//
//  Created by huodada on 2019/12/16.
//  Copyright © 2019 西安货达网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^AlipayBlock)(BOOL YESOrNO);

@interface AlipayManager : NSObject



+ (instancetype)sharedManager;
//生成订单调起支付宝接口
-(void)aliPay:(NSString *)str block:(AlipayBlock)block;
//支付接口回调
-(void)PayResoult:(NSURL *)URL;
@end

NS_ASSUME_NONNULL_END
