//
//  KEConstantsMacro.h
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#ifndef KEConstantsMacro_h
#define KEConstantsMacro_h


#define isiOS9 (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_8_3)
#define isiOS8 (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1)
#define isiOS7 (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1 && NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1)
#define isiOS6 (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_5_1 && NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_6_1)

//系统版本判断（iOS10之后）
//等于
#define SYSTEM_VERSION_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
//大于
#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
//大于等于
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
//小于
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
//小于等于
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)


#define ScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define ScreenHeight ([UIScreen mainScreen].bounds.size.height)

#define IS_IPAD             (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE           (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA           ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH        ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT       ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH   (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH   (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))


#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5         (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6         (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P        (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)


#define IS_SCREEN_55_INCH    IS_IPHONE_6P
#define IS_SCREEN_47_INCH    IS_IPHONE_6
#define IS_SCREEN_4_INCH    IS_IPHONE_5
#define IS_SCREEN_35_INCH    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960),  [[UIScreen mainScreen] currentMode].size) : NO)


#define isRetina4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define SGScreen_55_Inch    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)||CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size)) : NO)
#define SGScreen_47_Inch    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define SGScreen_4_Inch     ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define SGScreen_35_Inch    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size)||CGSizeEqualToSize(CGSizeMake(320, 480), [[UIScreen mainScreen] currentMode].size)) : NO)
#define SGScreen_55_Inch_EXP    ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) : NO)

#define SGScreen_isSamll      ([UIScreen mainScreen].currentMode.size.width <= 640 ? YES : NO)

#define SGScaleWidth  (ScreenWidth/320)
#define SGScaleHeight (ScreenHeight/568)

#define TabBarHeight (49.0f)
#define NavigationBarHeight (44.0f)
#define StatusBarHeight (20.0f)

#define MIN_Scale 1.0/[UIScreen mainScreen].scale

/********************* 函数宏 *********************/
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
// 快速的定义一个weakSelf，方便之后在block块中调用。
#define WS(weakSelf)  __weak __typeof(&*self) weakSelf = self;

//空替代宏
#define NOTEMPTY_STR(str) (IS_NOEMPTY_STR(str)?str:@"")
#define NOTEMPTY_ARRAY(arr) (IS_NOEMPTY_ARRAY(arr)?arr:[NSArray array])
#define NOTEMPTY_DIC(dic) (IS_NOEMPTY_DIC(dic)?dic:[NSDictionary dictionary])

//可变数组的待添加
//判空宏
#define IS_NOEMPTY_STR(str) (str!=nil&&[str isKindOfClass:[NSString class]]&&str.length>0)
#define IS_NOEMPTY_ARRAY(arr) (arr!=nil&&[arr isKindOfClass:[NSArray class]]&&arr.count>0)
#define IS_NOEMPTY_DIC(dic) (dic!=nil&&[dic isKindOfClass:[NSDictionary class]]&&dic.count>0)

#define SAFE_KEY_WINDOW ([((AppDelegate *)[UIApplication sharedApplication].delegate) safeKeyWindow])
#define SandBoxDocumentsPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES)firstObject]


#define ScreenFactor ([UIScreen mainScreen].bounds.size.width/320.0)

#define DeviceFactor(height) ([UIScreen mainScreen].bounds.size.width * height / 375.0)



#endif /* KEConstantsMacro_h */
