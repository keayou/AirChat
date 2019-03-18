//
//  UIImage+Base64.m
//  ImageTest
//
//  Created by fk on 2017/6/27.
//  Copyright © 2017年 fk. All rights reserved.
//

#import "UIImage+Base64.h"

@implementation UIImage (Base64)

+ (UIImage *)imageFromBase64String:(NSString *)baseStr {
    
    NSData *imageData = [NSData dataFromBase64String:baseStr];
    
    UIImage *image = [UIImage imageWithData:imageData];
    
    return image;
}


@end
