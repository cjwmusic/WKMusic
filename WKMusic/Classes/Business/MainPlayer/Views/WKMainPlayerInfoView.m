//
//  WKMainPlayerInfoView.m
//  WKMusic
//
//  Created by Wu Kong on 8/10/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainPlayerInfoView.h"

@interface WKMainPlayerInfoView()

@property (nonatomic, strong) UIButton *favButton;
@property (nonatomic, strong) UIButton *moreButton;
@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation WKMainPlayerInfoView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.favButton];
        [self addSubview:self.moreButton];
        [self addSubview:self.contentLabel];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.favButton.frame = CGRectMake(25, 0, self.height * 0.5, 22);
    self.moreButton.frame = CGRectMake(self.width - 25 - self.height * 0.5, 0, self.height * 0.5, 22);
    self.contentLabel.frame = CGRectMake(self.favButton.right + 5, 0, self.width - 2 * (self.favButton.right + 5), 22);
}

#pragma mark - 
#pragma mark Getters

- (UIButton *)favButton {
    if (!_favButton) {
        _favButton = [[UIButton alloc] init];
        [_favButton setImage:[UIImage imageNamed:@"fav_songs"] forState:UIControlStateNormal];
        _favButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    
    return _favButton;
}


- (UIButton *)moreButton {
    if (!_moreButton) {
        _moreButton = [[UIButton alloc] init];
        [_moreButton setImage:[UIImage imageNamed:@"more"] forState:UIControlStateNormal];
        _moreButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    
    return _moreButton;
}

- (UILabel *)contentLabel {
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.font = [UIFont systemFontOfSize:20];
        _contentLabel.textColor = [UIColor whiteColor];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    return _contentLabel;
}

- (void)setContent:(NSString *)content {
    _content = content;
    self.contentLabel.text = content;
}

@end
