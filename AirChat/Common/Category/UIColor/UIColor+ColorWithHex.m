//
//  UIColor+WithHex.m
//  sogousearch
//
//  Created by Dragon on 14-6-10.
//  Copyright (c) 2014年 搜狗. All rights reserved.
//

#import "UIColor+ColorWithHex.h"

@implementation UIColor (ColorWithHex)

+ (UIColor *)colorWithHex:(NSString *)hexColor {
    return [self colorWithHex:hexColor alpha:1.f];
}

+ (UIColor *)colorWithHex:(NSString *)hexColor alpha:(CGFloat)alpha {
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexColor substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:alpha];
}

+ (UIColor *)sg_colorWithHex:(NSUInteger)hexValue {
    return [self sg_colorWithHex:hexValue alpha:1.f];
}

+ (UIColor *)sg_colorWithHex:(NSUInteger)hexValue alpha:(CGFloat)alpha {
    
    CGFloat red = ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.f;
    CGFloat green = ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.f;
    CGFloat blue = ((CGFloat)(hexValue & 0xFF)) / 255.f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
