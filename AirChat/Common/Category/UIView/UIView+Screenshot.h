//
//  UIView+screenshot.h
//  menutranslation
//
//  Created by fk on 2017/9/6.
//  Copyright © 2017年 Dragon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Screenshot)

- (UIImage *)screenshot;

- (UIImage *)screenshotWithRect:(CGRect)rect;


@end
