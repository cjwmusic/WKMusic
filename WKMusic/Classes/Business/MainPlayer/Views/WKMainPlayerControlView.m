//
//  WKMainPlayerControlView.m
//  WKMusic
//
//  Created by Wu Kong on 8/12/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainPlayerControlView.h"

@interface WKMainPlayerControlView()

@property (nonatomic, strong) WKButton *shufferButton;
@property (nonatomic, strong) WKButton *repeatButton;
@property (nonatomic, strong) WKButton *backButton;
@property (nonatomic, strong) WKButton *forwardButton;
@property (nonatomic, strong) WKButton *playButton;

@end

@implementation WKMainPlayerControlView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.shufferButton];
        [self addSubview:self.repeatButton];
        [self addSubview:self.playButton];
        [self addSubview:self.backButton];
        [self addSubview:self.forwardButton];

    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.shufferButton.frame = CGRectMake(40, 0, 18, self.height);
    self.repeatButton.frame = CGRectMake(self.width - 40 - 18, 0, 18, self.height);
    self.playButton.frame = CGRectMake((self.width - 60) * 0.5, 0, 60, 60);
    self.backButton.frame = CGRectMake(self.playButton.left - 40 - 20, 0, 20, self.height);
    self.forwardButton.frame = CGRectMake(self.playButton.right + 40, 0, 20, self.height);
}

#pragma mark -
#pragma mark Getters

- (WKButton *)shufferButton {
    if (!_shufferButton) {
        _shufferButton = [[WKButton alloc] initWithImageName:@"shuffer"];
    }
    
    return _shufferButton;
}

- (WKButton *)repeatButton {
    if (!_repeatButton) {
        _repeatButton = [[WKButton alloc] initWithImageName:@"repeat"];
    }
    
    return _repeatButton;
}

- (WKButton *)backButton {
    if (!_backButton) {
        _backButton = [[WKButton alloc] initWithImageName:@"presong"];
    }
    
    return _backButton;
}

- (WKButton *)forwardButton {
    if (!_forwardButton) {
        _forwardButton = [[WKButton alloc] initWithImageName:@"nextsong"];
    }
    
    return _forwardButton;
}

- (WKButton *)playButton {
    if (!_playButton) {
        _playButton = [[WKButton alloc] initWithImageName:@"play"];
    }
    
    return _playButton;
}


@end
