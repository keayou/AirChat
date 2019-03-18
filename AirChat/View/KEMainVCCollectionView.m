//
//  KEMainVCCollectionView.m
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KEMainVCCollectionView.h"
#import "KEMainVCCollectionCell.h"

@interface KEMainVCCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectView;

@property (nonatomic, strong) NSMutableArray *layoutList;



@end

@implementation KEMainVCCollectionView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addSubview:self.collectView];
    }
    return self;
}

#pragma mark - Public
- (void)reloadViewWithData:(NSArray *)data {
    
    [self.collectView reloadData];
}


#pragma mark - UICollectionViewDelegate
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;//_layoutList.count;
}

//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//
//    UICollectionReusableView *reusableView = nil;
//    if (kind == UICollectionElementKindSectionHeader) {
//        UICollectionReusableView *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"InterestCollectionHeaderReusableView" forIndexPath:indexPath];
//        header.backgroundColor = [UIColor whiteColor];
//        [self setupCollectionHeaderView:header];
//        reusableView = header;
//    }
//    return reusableView;
//}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
//    SGCreditsInterestCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kSGCreditsInterestCollectionCellCellID forIndexPath:indexPath];
//    if (indexPath.row < _layoutList.count) {
//        [cell updateLayout:_layoutList[indexPath.row]];
//    }
    
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;

    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([KEMainVCCollectionCell class]) forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, MIN_Scale, 0, MIN_Scale);
}

#pragma mark - Lazy Init
- (UICollectionView *)collectView {
    
    if (_collectView != nil) {
        return _collectView;
    }
    
    CGFloat width = (self.width - 4*MIN_Scale)/2;
    CGFloat height = width * 1.7;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(width, height);
    layout.minimumLineSpacing = 2;
    layout.minimumInteritemSpacing = MIN_Scale;
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    _collectView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
    _collectView.backgroundColor = [UIColor whiteColor];
    _collectView.showsVerticalScrollIndicator = NO;
    //    _selectCollectionView.alwaysBounceVertical = YES;
    _collectView.dataSource = self;
    _collectView.delegate = self;
    [_collectView registerClass:[KEMainVCCollectionCell class] forCellWithReuseIdentifier:NSStringFromClass([KEMainVCCollectionCell class])];
    
    
//    [_collectView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"InterestCollectionHeaderReusableView"];
    
    return _collectView;
}

@end
