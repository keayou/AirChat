//
//  UIColor+WithHex.h
//  sogousearch
//
//  Created by Dragon on 14-6-10.
//  Copyright (c) 2014年 搜狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorWithHex)

+ (UIColor *)colorWithHex:(NSString *)hexColor;
+ (UIColor *)colorWithHex:(NSString *)hexColor alpha:(CGFloat)alpha;


/**
 Creates and returns a color object using the specified opacity of 1.0 and RGB component values.

 @param hexValue a value in hex format. eg. 0x001Aff.
 @return a newly created UIColor object.
 */
+ (UIColor *)sg_colorWithHex:(NSUInteger)hexValue;

/**
 Creates and returns a new color object using the specified opacity and RGB component values.

 @param hexValue a value in hex format. eg. 0x001Aff.
 @param alpha  The opacity value of the color object, specified as a value from 0.0 to 1.0.
 @return a newly created UIColor object.
 */
+ (UIColor *)sg_colorWithHex:(NSUInteger)hexValue alpha:(CGFloat)alpha;

@end
