//
//  UIButton+EnlargeTouchArea.h
//  sogousearch
//
//  Created by yue on 14-10-10.
//  Copyright (c) 2014年 搜狗. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UIButton (EnlargeTouchArea)
- (void) setEnlargeEdgeWithTop:(CGFloat) top right:(CGFloat) right bottom:(CGFloat) bottom left:(CGFloat) left;
@end
