//
//  LLToast.m
//
//  Created by LYKJ on 17/5/16.
//  Copyright © 2017年 LYKJ. All rights reserved.
//

#import "LLToast.h"
/** tabbar高度 */
#define tabbarH ([[UIApplication sharedApplication] statusBarFrame].size.height>20?83.0f:49.0f)
#define Screenwidth [UIScreen mainScreen].bounds.size.width
#define Screenheight [UIScreen mainScreen].bounds.size.height
@interface LLToast (){
    //显示的字符串
    NSString *_text;
    //显示的Label
    UIView *_contentView;
    //显示的时间
    CGFloat _duration;
    
}

@end

@implementation LLToast

-(id)initWithText:(NSString* )text{
    if (self = [super init]) {
        _contentView = [[UIView alloc]initWithFrame:CGRectMake( Screenwidth - 30, 40, 30, Screenheight)];
        CGFloat viewWitd = _contentView.bounds.size.width;
        CGFloat viewHeight = _contentView.bounds.size.height;
        UIImageView *iconImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, viewWitd, viewWitd)];
        iconImageView.backgroundColor = [UIColor redColor];
        [_contentView addSubview:iconImageView];
        
        UILabel *titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, viewHeight-10, 30)];
        titleLabel.text = @"djhfkajhjdkhfjkhsjkdhfjkh";
        titleLabel.backgroundColor = [UIColor blueColor];
        titleLabel.transform = CGAffineTransformMakeRotation(M_PI_2);
        titleLabel.frame = CGRectMake(0, CGRectGetMaxY(iconImageView.frame), viewWitd, viewHeight - viewWitd);
        [_contentView addSubview:titleLabel];
        _contentView.backgroundColor = [[UIColor yellowColor]colorWithAlphaComponent:0.7];
        _duration = 3.0f; //提示框显示时间
    }
    return self;
}
#pragma mark ------- 自定义私有方法
-(void)setDuration:(CGFloat)duration{
    
    _duration = duration;
}
//显示自定义控件
-(void)show{
    
    UIWindow* window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:_contentView];
    //执行显示方法
    [self showAnimation];
    //几秒种后自动消失
    [self performSelector:@selector(hideAnimation) withObject:nil afterDelay:_duration];
}
//改变toast的透明度
-(void)showAnimation{
    [UIView animateWithDuration:0.3 animations:^{
        self->_contentView.alpha = 1.0f;
    }];
}
//先改变控件的透明度再移除控件
-(void)hideAnimation{
    [UIView animateWithDuration:_duration animations:^{
        self->_contentView.alpha = 0.0f;
    } completion:^(BOOL finished) {
        [self->_contentView removeFromSuperview];
    }];
}

#pragma mark ------- 公共方法
//直接在屏幕中间显示toast，默认3秒
+(void)showWithText:(NSString *)text{
    [self showWithText:text duration:3.0f];
}
//可以控制显示时间
+(void)showWithText:(NSString *)text duration:(CGFloat)duration{
    LLToast *toast = [[LLToast alloc]initWithText:text];
    [toast setDuration:duration];
    [toast show];
}

@end
