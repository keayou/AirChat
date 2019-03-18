//
//  KERootTabBar.h
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, KERootTabBarIndex) {
    KERootTabBar_First,
    KERootTabBar_second,
    KERootTabBar_third,
};

@protocol SGHomeTabBarDelegate <NSObject>

- (void)tabBarClickAction:(KERootTabBarIndex)tabIndex;

@end

@interface KERootTabBar : UIView

@property (nonatomic, weak) id<SGHomeTabBarDelegate> delegate;



@end

NS_ASSUME_NONNULL_END
