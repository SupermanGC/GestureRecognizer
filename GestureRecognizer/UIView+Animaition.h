//
//  UIView+Animaition.h
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Animaition)

//视图摇摆
-(void)shakeWithRaid:(CGFloat)raid duration:(NSTimeInterval)duration repeatCount:(NSUInteger)count;

//停止摇摆
-(void)stopShake;

@end
