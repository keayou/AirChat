//
//  KEPicturePickManager.h
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^KEPicturePickerBlock)(UIImage *image);


@interface KEPicturePickManager : NSObject


- (void)getPhotoAlbumOrTakeAPhotoWithController:(UIViewController *)controller photoBlock:(KEPicturePickerBlock)photoBlock;

- (void)getPhotoByAlbumWithController:(UIViewController *)controller photoBlock:(KEPicturePickerBlock)photoBlock;

- (void)getPhotoByTakeAPhotoWithController:(UIViewController *)controller photoBlock:(KEPicturePickerBlock)photoBlock;

@end

NS_ASSUME_NONNULL_END
