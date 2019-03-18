//
//  NSNull+BadServerCase.m
//  SGVoiceCommand
//
//  Created by 哲 赵 on 13-1-31.
//  Copyright (c) 2013年 Sogou. All rights reserved.
//

#import "NSNull+BadServerCase.h"

@implementation NSNull (BadServerCase)

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    SEL aSelector = [anInvocation selector];
    if ([self respondsToSelector:aSelector]) {
        [anInvocation invokeWithTarget:self];
    }
    else if ([@"" respondsToSelector:aSelector]){
        [anInvocation invokeWithTarget:@""];
    }
    else{
        [self doesNotRecognizeSelector:aSelector];
    }
}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector{
    NSMethodSignature* signature = [super methodSignatureForSelector:aSelector];
    if (!signature){
        signature = [@"" methodSignatureForSelector:aSelector];
    }
    return signature;
}


@end
