//
//  WKMainPlayerNavBar.m
//  WKMusic
//
//  Created by Wu Kong on 8/10/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainPlayerNavBar.h"

@interface WKMainPlayerNavBar()

@property (nonatomic, strong) UIButton *leftButton;
@property (nonatomic, strong) UIButton *rightButton;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

@end

@implementation WKMainPlayerNavBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.leftButton];
        [self addSubview:self.rightButton];
        [self addSubview:self.titleLabel];
        [self addSubview:self.subTitleLabel];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.leftButton.frame = CGRectMake(25, 0, 20, self.height);
    self.rightButton.frame = CGRectMake(self.right - 25 - 20, 0, 20, self.height);
    self.titleLabel.frame = CGRectMake(25 + 20 + 5, 7, self.width - (25 + 20 + 5) * 2, 15);
    self.subTitleLabel.frame = CGRectMake(25 + 20 + 5, self.titleLabel.bottom + 5, self.width - (25 + 20 + 5) * 2, 10);
}

#pragma mark - 
#pragma mark Getters

- (UIButton *)leftButton {
    if (!_leftButton) {
        _leftButton = [[UIButton alloc] init];
        [_leftButton setImage:[UIImage imageNamed:@"hamburger_menu"] forState:UIControlStateNormal];
        _leftButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [_leftButton addTarget:self action:@selector(onTapLeftButton) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return _leftButton;
}

- (UIButton *)rightButton {
    if (!_rightButton) {
        _rightButton = [[UIButton alloc] init];
        _rightButton.contentMode = UIViewContentModeScaleAspectFit;
        [_rightButton setImage:[UIImage imageNamed:@"hide_songs"] forState:UIControlStateNormal];
        _rightButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [_rightButton addTarget:self action:@selector(onTapRightButton) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _rightButton;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _titleLabel;
}

- (UILabel *)subTitleLabel {
    if (!_subTitleLabel) {
        _subTitleLabel = [[UILabel alloc] init];
        _subTitleLabel.font = [UIFont systemFontOfSize:10];
        _subTitleLabel.textColor = [UIColor whiteColor];
        _subTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _subTitleLabel;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLabel.text = title;
}

- (void)setSubTitle:(NSString *)subTitle {
    _subTitle = subTitle;
    self.subTitleLabel.text = subTitle;
}

#pragma mark - 
#pragma mark Events

- (void)onTapLeftButton {
    if ([self.delegate respondsToSelector:@selector(navBarTapLeftButton:)]) {
        [self.delegate navBarTapLeftButton:self];
    }
}

- (void)onTapRightButton {
    if ([self.delegate respondsToSelector:@selector(navBarTapRightButton:)]) {
        [self.delegate navBarTapRightButton:self];
    }
}


@end
