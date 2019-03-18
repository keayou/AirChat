//
//  UIViewController+AVAuthorizationStatus.h
//  menutranslation
//
//  Created by fk on 2017/7/19.
//  Copyright © 2017年 Dragon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>


@interface UIViewController (AVAuthorizationStatus)

- (BOOL)checkCameraAuthorizationStatus;



- (BOOL)checkAlbumAuthorizationStatus;

@end
