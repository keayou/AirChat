//
//  KEMainVCCollectionCell.m
//  AirChat
//
//  Created by fk on 2019/3/11.
//  Copyright © 2019 fk. All rights reserved.
//

#import "KEMainVCCollectionCell.h"

@interface KEMainVCCollectionCell ()

@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation KEMainVCCollectionCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
//        self.contentView.backgroundColor = [UIColor whiteColor];


        _imgView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_imgView];

        _titleLabel = [UILabel new];
        _titleLabel.font = [UIFont systemFontOfSize:12];
        _titleLabel.textColor = [UIColor colorWithHex:@"222222"];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.numberOfLines = 1;
        _titleLabel.height = [_titleLabel sizeThatFits:CGSizeMake(_imgView.width, CGFLOAT_MAX)].height;
        _titleLabel.width = _imgView.width;
        _titleLabel.centerX = _imgView.width / 2;
        _titleLabel.bottom = _imgView.height;
        [_imgView addSubview:_titleLabel];
    }
    return self;
}

- (void)configCellWithData:(id)cellData {
    
    
    
    
    
    
}

@end
