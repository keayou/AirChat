//
//  UIImage+ResizedImage.h
//  weixinheadline
//
//  Created by yue on 15/5/5.
//  Copyright (c) 2015年 Sogou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ResizedImage)
+ (UIImage *)resizedImage:(NSString *)imgName;
+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos;
+ (UIImage *)ct_imageFromImage:(UIImage *)image inRect:(CGRect)rect;


@end
