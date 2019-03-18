//
//  NSNull+BadServerCase.h
//  SGVoiceCommand
//
//  Created by 哲 赵 on 13-1-31.
//  Copyright (c) 2013年 Sogou. All rights reserved.
//


//把对NSNull的消息转给@""
//解决json解析把null转为NSNull后直接调用length时crash的问题
#import <Foundation/Foundation.h>

@interface NSNull (BadServerCase)

@end
