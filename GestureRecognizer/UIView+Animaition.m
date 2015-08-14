//
//  UIView+Animaition.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "UIView+Animaition.h"

@implementation UIView (Animaition)

-(void)shakeWithRaid:(CGFloat)raid duration:(NSTimeInterval)duration repeatCount:(NSUInteger)count
{
    //添加摇动动画
    CABasicAnimation * shakeAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    shakeAnimation.duration=duration;
    
    shakeAnimation.fromValue=[NSNumber numberWithFloat:-raid];
    //左右摇摆
    shakeAnimation.toValue=[NSNumber numberWithFloat:raid];
    
    shakeAnimation.autoreverses=YES;
    //自动倒带
    shakeAnimation.removedOnCompletion=YES;
    //完成移除
    
    if(count==0)
    {
        shakeAnimation.repeatCount=FLT_MAX;
    }
    else
    {
        shakeAnimation.repeatCount=count;
    }
    //添加给视图 layer用于设置动画，修改视图圆角等。
    [self.layer addAnimation:shakeAnimation forKey:@"Let me shake"];
}
-(void)stopShake
{
    [self.layer removeAnimationForKey:@"Let me Shake"];
}
@end





