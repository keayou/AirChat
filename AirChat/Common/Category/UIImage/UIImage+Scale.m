//
//  UIImage+Scale.m
//  sogousearch
//
//  Created by Dragon on 14-7-16.
//  Copyright (c) 2014年 搜狗. All rights reserved.
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

- (UIImage *)toScale:(float)scaleSize{
    
    UIGraphicsBeginImageContext(CGSizeMake(self.size.width * scaleSize, self.size.height *scaleSize));
    [self drawInRect:CGRectMake(0, 0, self.size.width *scaleSize, self.size.height *scaleSize)];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
    
}

@end
