//
//  KEOptionViewController.m
//  AirChat
//
//  Created by fk on 2019/3/13.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KEOptionViewController.h"
#import "KEPicturePickManager.h"

@interface KEOptionViewController ()

@property (nonatomic, strong) UIImage *pickedImage;

@property (nonatomic, strong) KEPicturePickManager *pickManager;

@end

@implementation KEOptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    int R = (arc4random() % 256) ;
//    int G = (arc4random() % 256) ;
//    int B = (arc4random() % 256) ;
//    self.view.backgroundColor = [UIColor colorWithRed:R green:G blue:B alpha:0.3];
    self.view.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    [self setupContentView:self.view];
}


- (void)setupContentView:(UIView *)pView {
    
    UIButton *backCoverBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backCoverBtn.backgroundColor = [UIColor clearColor];
    backCoverBtn.frame = self.view.bounds;
    [backCoverBtn addTarget:self action:@selector(backCoverBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [pView addSubview:backCoverBtn];
    
    UIButton *photoLibBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [photoLibBtn setTitle:@"相册" forState:UIControlStateNormal];
    photoLibBtn.frame = CGRectMake(80, self.view.height-TabBarHeight-40-40, 50, 40);
    [photoLibBtn addTarget:self action:@selector(photoLibBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [pView addSubview:photoLibBtn];
    photoLibBtn.layer.borderWidth = 1.0;
    photoLibBtn.layer.borderColor = [UIColor redColor].CGColor;
    
    UIButton *cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [cameraBtn setTitle:@"拍照" forState:UIControlStateNormal];
    cameraBtn.frame = CGRectMake(self.view.width - 50 - 80, self.view.height-TabBarHeight-40-40, 50, 40);
    [cameraBtn addTarget:self action:@selector(cameraBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [pView addSubview:cameraBtn];
    cameraBtn.layer.borderWidth = 1.0;
    cameraBtn.layer.borderColor = [UIColor redColor].CGColor;
}


#pragma mark - Events
- (void)backCoverBtnClick:(UIButton *)sender {
    [self dismissView];
}

- (void)photoLibBtnClick:(UIButton *)sender {
    [self dismissView];

    WS(weakSelf);
    [self.pickManager getPhotoByAlbumWithController:self photoBlock:^(UIImage * _Nonnull image) {
        weakSelf.pickedImage = image;
    }];
}

- (void)cameraBtnClick:(UIButton *)sender {
    [self dismissView];
    
    WS(weakSelf);
    [self.pickManager getPhotoByTakeAPhotoWithController:self photoBlock:^(UIImage * _Nonnull image) {
        weakSelf.pickedImage = image;
    }];
}

#pragma mark - Private
- (void)dismissView {
    self.navigationController.view.hidden = !self.navigationController.view.hidden;
}

- (KEPicturePickManager *)pickManager {
    if (_pickManager) return _pickManager;
    _pickManager = [[KEPicturePickManager alloc]init];
    return _pickManager;
}

@end
