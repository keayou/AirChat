//
//  KETabBarViewController.m
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KETabBarViewController.h"
#import "KERootTabBar.h"
#import "KEOptionViewController.h"

@interface KETabBarViewController ()<SGHomeTabBarDelegate>


@property (nonatomic, strong) KEBaseNaviViewController *optionNaviVC;
@end

@implementation KETabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupRootView:self.view];
}

- (void)setupRootView:(UIView *)pView {
    
    self.tabBar.hidden = YES;
    [self.tabBar removeFromSuperview];
    
    KEOptionViewController *optionVC = [[KEOptionViewController alloc] init];
    _optionNaviVC = [[KEBaseNaviViewController alloc] initWithRootViewController:optionVC];
    _optionNaviVC.navigationBarHidden = YES;
    [self addChildViewController:_optionNaviVC];
    [self.view addSubview:_optionNaviVC.view];
    _optionNaviVC.view.hidden = YES;
    
    KERootTabBar *tabBar = [[KERootTabBar alloc] initWithFrame:CGRectMake(0, self.view.height - TabBarHeight, self.view.width, TabBarHeight)];
    tabBar.delegate = self;
    [self.view addSubview:tabBar];
}

#pragma mark - SGHomeTabBarDelegate
- (void)tabBarClickAction:(KERootTabBarIndex)tabIndex {

    switch (tabIndex) {
        case KERootTabBar_First:
            _optionNaviVC.view.hidden = YES;
            self.selectedIndex = 0;
            break;
        case KERootTabBar_second:
            _optionNaviVC.view.hidden = NO;
            break;
        case KERootTabBar_third:
            _optionNaviVC.view.hidden = YES;
            self.selectedIndex = 1;
            break;
    }
}



@end
