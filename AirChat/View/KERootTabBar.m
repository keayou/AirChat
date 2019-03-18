//
//  KERootTabBar.m
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KERootTabBar.h"


@interface KERootTabBar ()

@property (nonatomic, strong) NSArray <NSDictionary *>*tabInfoList;
@property (nonatomic, strong) NSMutableArray <UIButton *>*tabBtnList;


@end

@implementation KERootTabBar


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        
        _tabInfoList = @[@{@"img":@"",@"title":@"图集",@"tag":@(KERootTabBar_First)},
                     @{@"img":@"",@"title":@"添加",@"tag":@(KERootTabBar_second)},
                     @{@"img":@"",@"title":@"我的",@"tag":@(KERootTabBar_third)}];
        _tabBtnList = [NSMutableArray arrayWithCapacity:_tabInfoList.count];

        [self setupContentView:self];
    }
    return self;
}

- (void)setupContentView:(UIView *)pView {
    
    CGFloat width = pView.width / 3;
    CGFloat height = pView.height;
    
    __block CGFloat startX = 0;
    [_tabInfoList enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:obj[@"title"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        [btn setImage:[UIImage imageNamed:obj[@"title"]] forState:UIControlStateNormal];
        btn.tag = [obj[@"tag"] integerValue];
        [btn addTarget:self action:@selector(tabBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [btn setSize:CGSizeMake(width, height)];
        btn.left = startX;
        btn.bottom = pView.height;
        [pView addSubview:btn];
        
        btn.layer.borderWidth = 1.0;
        btn.layer.borderColor = [UIColor redColor].CGColor;
        
        startX += btn.width;
        
        [self.tabBtnList addObject:btn];
    }];
    
    if (self.tabBtnList.count > 0) {
        UIButton *btn = self.tabBtnList[0];
        btn.selected = YES;
    }
}

#pragma mark - Events
- (void)tabBtnClick:(UIButton *)sender {
    
    [_tabBtnList enumerateObjectsUsingBlock:^(UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (sender.tag == obj.tag) {
            obj.selected = YES;
        } else {
            obj.selected = NO;
        }
    }];
    
    if (_delegate && [_delegate respondsToSelector:@selector(tabBarClickAction:)]) {
        [_delegate tabBarClickAction:sender.tag];
    }
}


@end
