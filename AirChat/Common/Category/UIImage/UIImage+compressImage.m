//
//  UIImage+compressImage.m
//  sogousearch
//
//  Created by zeta on 16/4/29.
//  Copyright © 2016年 搜狗. All rights reserved.
//

#import "UIImage+compressImage.h"
#import "UIImage+Scale.h"


@implementation UIImage (compressImage)


+ (NSData *)compressImageData:(NSData *)data threshold:(NSInteger)threshold{
    if (data == nil) {
        return nil;
    }
    
    if ((data.length/1000.0f <threshold) && (data.length != 0)) {
        return data;
    }
    UIImage *snapShotImage = [[UIImage imageWithData:data] toScale:.2];

    NSData *imageData = UIImagePNGRepresentation(snapShotImage);
    
    return imageData;
}


@end
