//
//  UIImage+BufferData.h
//  menutranslation
//
//  Created by fk on 2017/7/19.
//  Copyright © 2017年 Dragon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UIImage (BufferData)

// Create a UIImage from sample buffer data
+ (UIImage *)imageFromSampleBuffer:(CMSampleBufferRef)sampleBuffer;

@end
