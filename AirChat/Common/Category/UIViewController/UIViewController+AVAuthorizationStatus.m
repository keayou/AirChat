//
//  UIViewController+AVAuthorizationStatus.m
//  menutranslation
//
//  Created by fk on 2017/7/19.
//  Copyright © 2017年 Dragon. All rights reserved.
//

#import "UIViewController+AVAuthorizationStatus.h"


#define kAlertTagPhotoLibraryOpenSettings   100
#define kAlertTagCameraOpenSettings         101

@interface UIViewController ()<UIAlertViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation UIViewController (AVAuthorizationStatus)

- (BOOL)checkCameraAuthorizationStatus{
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"你没有摄像头" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
        return NO;
    }
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (status == AVAuthorizationStatusDenied || AVAuthorizationStatusNotDetermined) {
        NSString *title;
        title = (status == AVAuthorizationStatusDenied) ? @"需要权限" : @"程序运行时需要使用相机";
        NSString *message = @"请点击下方的“设置”按钮，打开“相机”的开关";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                            message:message
                                                           delegate:self
                                                  cancelButtonTitle:@"取消"
                                                  otherButtonTitles:@"设置", nil];
        alertView.tag = kAlertTagCameraOpenSettings;
        [alertView show];
        
        return NO;
    }
    
    return YES;
}

- (BOOL)checkAlbumAuthorizationStatus{

    ALAuthorizationStatus status = [ALAssetsLibrary authorizationStatus];
    if (status == ALAuthorizationStatusDenied || ALAuthorizationStatusNotDetermined) {
        NSString *title;
        title = (status == AVAuthorizationStatusDenied) ? @"需要权限" : @"程序运行时需要使用相册";
        NSString *message = @"请点击下方的“设置”按钮，打开“照片”的开关";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                            message:message
                                                           delegate:self
                                                  cancelButtonTitle:@"取消"
                                                  otherButtonTitles:@"设置", nil];
        alertView.tag = kAlertTagPhotoLibraryOpenSettings;
        [alertView show];
        
        return NO;
    }
    
    return YES;
}

#pragma mark - delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (kAlertTagPhotoLibraryOpenSettings == alertView.tag ||
        kAlertTagCameraOpenSettings == alertView.tag) {
        if (buttonIndex != alertView.cancelButtonIndex) {
            UIApplication *app = [UIApplication sharedApplication];
            NSURL *settingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            if ([app canOpenURL:settingsURL]) {
                [app openURL:settingsURL];
            }
        } else {
            if (kAlertTagCameraOpenSettings == alertView.tag ) {
                [self.navigationController popViewControllerAnimated:YES];
            }
        }
    }
}


@end
