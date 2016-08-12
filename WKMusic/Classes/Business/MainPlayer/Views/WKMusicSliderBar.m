//
//  WKMusicSliderBar.m
//  WKMusic
//
//  Created by Wu Kong on 8/12/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMusicSliderBar.h"

@interface WKMusicSliderBar()

@property (nonatomic, strong) UILabel *currentTimeLabel;
@property (nonatomic, strong) UILabel *durationTimeLabel;
@property (nonatomic, strong) UISlider *slider;

@end

@implementation WKMusicSliderBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.currentTimeLabel];
        [self addSubview:self.durationTimeLabel];
        [self addSubview:self.slider];
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.currentTimeLabel.frame = CGRectMake(25, 0, 40, self.height);
    self.durationTimeLabel.frame = CGRectMake(self.width - 25 - 40, 0, 40, self.height);
    self.slider.frame = CGRectMake(self.currentTimeLabel.right + 5, 0, self.durationTimeLabel.left - 5 - self.currentTimeLabel.right - 5, self.height);
}

#pragma mark -
#pragma mark Getters

- (UILabel *)currentTimeLabel {
    if (!_currentTimeLabel) {
        _currentTimeLabel = [[UILabel alloc] init];
        _currentTimeLabel.font = [UIFont systemFontOfSize:10];
        _currentTimeLabel.textColor = [UIColor whiteColor];
        _currentTimeLabel.textAlignment = NSTextAlignmentRight;
        _currentTimeLabel.text = @"00:00";
    }
    
    return _currentTimeLabel;
}

-  (UILabel *)durationTimeLabel {
    if (!_durationTimeLabel) {
        _durationTimeLabel = [[UILabel alloc] init];
        _durationTimeLabel.font = [UIFont systemFontOfSize:10];
        _durationTimeLabel.textColor = [UIColor whiteColor];
        _durationTimeLabel.textAlignment = NSTextAlignmentLeft;
        _durationTimeLabel.text = @"12:21";
    }
    
    return _durationTimeLabel;
}

- (UISlider *)slider {
    if (!_slider) {
        _slider = [[UISlider alloc] init];
        _slider.maximumValue = 1.0;
        _slider.minimumValue = 0.0;
        
        UIImage *leftTrackImg = [UIImage imageNamed:@"timeline_pass"];
        UIImage *rightTrackImg = [UIImage imageNamed:@"timeline"];
        UIImage *thumbImg = [UIImage imageNamed:@"circle"];
        
        [_slider setThumbImage:thumbImg forState:UIControlStateNormal];
        [_slider setMaximumTrackImage:rightTrackImg forState:UIControlStateNormal];
        [_slider setMinimumTrackImage:leftTrackImg forState:UIControlStateNormal];
    }
    
    return _slider;
}

@end
