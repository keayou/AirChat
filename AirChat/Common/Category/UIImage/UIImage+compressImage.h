//
//  UIImage+compressImage.h
//  sogousearch
//
//  Created by zeta on 16/4/29.
//  Copyright © 2016年 搜狗. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (compressImage)

+ (NSData *)compressImageData:(NSData *)data threshold:(NSInteger)threshold;

@end
