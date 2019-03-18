//
//  UIView+MotionEffect.h
//  sogousearch
//
//  Created by Dragon on 16/8/17.
//  Copyright © 2016年 搜狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MotionEffect)

@property (nonatomic, strong) UIMotionEffectGroup  *effectGroup;

- (void)addXAxisWithValue:(CGFloat)xValue YAxisWithValue:(CGFloat)yValue;
- (void)removeSelfMotionEffect;

@end
