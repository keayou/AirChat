//
//  NSData+Utility.h
//  sogousearch
//
//  Created by Dragon on 17/4/26.
//  Copyright © 2017年 搜狗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Utility)

- (NSString *)md5;


//加解密需配对使用
- (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)AES256DecryptWithKey: (NSString *)key;

//加解密需配对使用
- (NSData *)AES256EncryptWithKey:(NSString *)key iv:(NSString*)iv;
- (NSData *)AES256DecryptWithKey: (NSString *)key iv:(NSString*)iv;


+ (NSData *)dataFromBase64String:(NSString *)aString;
- (NSString *)base64EncodedString;


- (NSString *)hexString;
+ (NSData *)dataFromHexString:(NSString *)hexString;

- (NSData *)gzipInflate;
- (NSData *)gzipDeflate;


@end
