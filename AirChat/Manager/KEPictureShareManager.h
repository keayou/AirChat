//
//  KEPictureShareManager.h
//  AirChat
//
//  Created by fk on 2019/3/13.
//  Copyright © 2019 fk. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KEPictureShareManager : NSObject

+ (void)shareImageBySystem:(UIImage *)image sourceVC:(UIViewController *)sVC completionHandler:(void(^)(BOOL successed))block;

@end

NS_ASSUME_NONNULL_END
