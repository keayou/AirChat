//
//  UIView+Shadow.h
//  Shadow Maker Example
//
//  Created by wangwei on 14-5-28.
//  Copyright (c) 2014年 搜狗. All rights reserved.
//



#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (Shadow)

- (void)makeInsetShadow;
- (void)makeInsetShadowWithRadius:(float)radius Alpha:(float)alpha;
- (void)makeInsetShadowWithRadius:(float)radius Color:(UIColor *)color Directions:(NSArray *)directions;
- (void)removeShodow;
@end
