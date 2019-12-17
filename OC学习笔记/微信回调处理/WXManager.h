//
//  WXManager.h
//  Driver
//
//  Created by clack on 2019/8/6.
//  Copyright © 2019 huodada. All rights reserved.
//



#import <Foundation/Foundation.h>
#import "WXApi.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^WxPayResultBlock)(int);
typedef void(^WxShareResultBlock)(int);
typedef void(^WxOAuthoResultBlock)(BaseResp *);
@interface WXManager : NSObject  <WXApiDelegate>

+ (instancetype)sharedManager;

@property (nonatomic, copy) WxPayResultBlock wxPayResultBlock;

@property (nonatomic, copy) WxShareResultBlock wxShareResultBlock;

@property (nonatomic, copy) WxOAuthoResultBlock wxOAuthoResultBlock;

@end

NS_ASSUME_NONNULL_END

