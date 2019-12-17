//
//  WXManager.m
//  Driver
//
//  Created by clack on 2019/8/6.
//  Copyright © 2019 huodada. All rights reserved.
//

#import "WXManager.h"
@implementation WXManager

#pragma mark - LifeCycle
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static WXManager *instance;
    dispatch_once(&onceToken, ^{
        instance = [[WXManager alloc] init];
    });
    return instance;
}

#pragma mark - WXApiDelegate
- (void)onResp:(BaseResp*)resp {
    if([resp isKindOfClass:[PayResp class]]){
        //支付返回结果回调
        if(self.wxPayResultBlock) {
            self.wxPayResultBlock(resp.errCode);
        }
    }
    
    if([resp isKindOfClass:[SendMessageToWXResp class]]){
        //分享返回结果回调
        if(self.wxShareResultBlock) {
            self.wxShareResultBlock(resp.errCode);
        }
    }
    
    if ([resp isKindOfClass:[SendAuthResp class]]) {
        //微信登录结果回调
        if(self.wxOAuthoResultBlock) {
            self.wxOAuthoResultBlock(resp);
        }
    }
}

@end
