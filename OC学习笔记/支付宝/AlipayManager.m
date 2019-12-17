//
//  AlipayManager.m
//  squirrelcheck
//
//  Created by huodada on 2019/12/16.
//  Copyright © 2019 西安货达网络科技有限公司. All rights reserved.
//

#import "AlipayManager.h"
#import <AlipaySDK/AlipaySDK.h>

@interface  AlipayManager()

@property(nonatomic,copy)AlipayBlock payBlock;

@end

@implementation AlipayManager

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static AlipayManager *instance;
    dispatch_once(&onceToken, ^{
        instance = [[AlipayManager alloc] init];
    });
    return instance;
}

//支付接口
-(void)aliPay:(NSString *)str block:(AlipayBlock)block{
    self.payBlock = block;
    [[AlipaySDK defaultService] payOrder:str fromScheme:@"ZTIosAlipay" callback:^(NSDictionary *resultDic) {
           [self pareseAlipay:resultDic];
       }];
}

//支付宝订单处理回调
-(void)PayResoult:(NSURL *)URL{
    [[AlipaySDK defaultService] processOrderWithPaymentResult:URL
     standbyCallback:^(NSDictionary *resultDic) {
         [self pareseAlipay:resultDic];
     }];

}

-(void)pareseAlipay:(NSDictionary *)dic{
    //支付宝支付只判断一个9000的成功码 其他的都认为是失败
    NSString * resultStatus = dic[@"resultStatus"];
    if (self.payBlock) {
        BOOL yesOrNo = [resultStatus intValue]==9000;
        self.payBlock(yesOrNo);
    }
}

@end
