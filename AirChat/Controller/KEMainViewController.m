//
//  KEMainViewController.m
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KEMainViewController.h"
#import "KEMainVCCollectionView.h"

@interface KEMainViewController ()

@end

@implementation KEMainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setupRootView:self.view];
}

- (void)setupRootView:(UIView *)pView {
    
    KEMainVCCollectionView *collectView = [[KEMainVCCollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height - TabBarHeight)];
    [pView addSubview:collectView];
    
}

@end
