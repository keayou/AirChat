//
//  KEPictureShareManager.m
//  AirChat
//
//  Created by fk on 2019/3/13.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KEPictureShareManager.h"

@implementation KEPictureShareManager


+ (void)shareImageBySystem:(UIImage *)image sourceVC:(UIViewController *)sVC completionHandler:(void(^)(BOOL successed))block {

    if (!image) return;
    
    NSArray *activityItems = @[image];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc]initWithActivityItems:activityItems
                                                                            applicationActivities:nil];
//    activityVC.excludedActivityTypes = @[UIActivityTypePrint, UIActivityTypeCopyToPasteboard,UIActivityTypeAssignToContact,UIActivityTypeSaveToCameraRoll,UIActivityTypeAddToReadingList];
    
    activityVC.completionWithItemsHandler = ^(UIActivityType  _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError) {
        
        !block ? : block (completed);
    };
    if (IS_IPAD) {
        UIPopoverPresentationController *popOverVC = activityVC.popoverPresentationController;
        popOverVC.sourceRect = CGRectMake(sVC.view.width / 2 - 10, sVC.view.height, 20, 20);
        popOverVC.sourceView = sVC.view;
        popOverVC.permittedArrowDirections = UIPopoverArrowDirectionDown;
        [sVC presentViewController:activityVC animated:YES completion:nil];
    } else {
        [sVC presentViewController:activityVC animated:YES completion:nil];
    }
}


@end
