//
//  UIImage+Base64.h
//  ImageTest
//
//  Created by fk on 2017/6/27.
//  Copyright © 2017年 fk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSData+Utility.h"

@interface UIImage (Base64)


+ (UIImage *)imageFromBase64String:(NSString *)baseStr;


@end
