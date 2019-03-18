//
//  UIImage+Color.h
//  sogousearch
//
//  Created by guotianchi on 2017/5/5.
//  Copyright © 2017年 搜狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIColor)

+ (UIImage *)createImageWithColor: (UIColor *)color;
+ (UIImage *)imageByApplyingAlpha:(CGFloat)alpha image:(UIImage*)image;

- (UIImage *)imageWithTintColor:(UIColor *)tintColor;

@end
