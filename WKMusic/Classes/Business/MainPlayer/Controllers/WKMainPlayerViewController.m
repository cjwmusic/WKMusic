//
//  WKMainPlayerViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/10/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainPlayerViewController.h"
#import "WKMainPlayerNavBar.h"
#import "WKBlurView.h"
#import "WKMainPlayerInfoView.h"
#import "WKMusicSliderBar.h"
#import "WKMainPlayerControlView.h"

@interface WKMainPlayerViewController() <WKMainPlayerNavBarDelegate>

@property (nonatomic, strong) WKMainPlayerNavBar *navBar;
@property (nonatomic, strong) WKBlurView *blurView;
@property (nonatomic, strong) WKImageView *backgroundImageView;
@property (nonatomic, strong) WKImageView *musicCoverImageView;
@property (nonatomic, strong) WKMainPlayerInfoView *infoView;
@property (nonatomic, strong) WKMusicSliderBar *sliderBar;
@property (nonatomic, strong) WKMainPlayerControlView *controlView;

@end

@implementation WKMainPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.hiddenNavNar = NO;
    
    [self initViews];
    [self loadData];
}

- (void)initViews {
    [self.view addSubview:self.backgroundImageView];
    [self.view addSubview:self.blurView];
    [self.view addSubview:self.navBar];
    [self.view addSubview:self.musicCoverImageView];
    [self.view addSubview:self.infoView];
    [self.view addSubview:self.sliderBar];
    [self.view addSubview:self.controlView];
}

- (void)loadData {
    self.backgroundImageView.imageUrlString = @"http://img0.ph.126.net/dGlTX7fwuT5MPHCSuTkgnQ==/2003538884326501794.jpg";
    self.musicCoverImageView.imageUrlString = @"http://img0.ph.126.net/dGlTX7fwuT5MPHCSuTkgnQ==/2003538884326501794.jpg";
    self.navBar.title = @"南方姑娘";
    self.navBar.subTitle = @"赵雷";
    self.infoView.content = @"我心里的南方姑娘~";
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

#pragma mark - 
#pragma mark Getters

-(WKMainPlayerNavBar *)navBar {
    if (!_navBar) {
        _navBar = [[WKMainPlayerNavBar alloc] initWithFrame:CGRectMake(0, 20, APP_SCREEN_WIDTH, 44)];
        _navBar.backgroundColor = [UIColor clearColor];
        _navBar.delegate = self;
    }
    return _navBar;
}

- (WKBlurView *)blurView {
    if (!_blurView) {
        _blurView = [[WKBlurView alloc] initWithFrame:self.view.bounds];
    }
    
    return _blurView;
}

- (WKImageView *)backgroundImageView {
    if (!_backgroundImageView) {
        _backgroundImageView = [[WKImageView alloc] initWithFrame:self.view.bounds];
    }
    
    return _backgroundImageView;
}

- (WKImageView *)musicCoverImageView {
    if (!_musicCoverImageView) {
        _musicCoverImageView = [[WKImageView alloc] initWithFrame:CGRectMake(36, 80, APP_SCREEN_WIDTH - 36 - 36, APP_SCREEN_WIDTH - 36 - 36)];
        _musicCoverImageView.layer.cornerRadius = 5;
        _musicCoverImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _musicCoverImageView.layer.borderWidth = 0.2;
    }
    
    return _musicCoverImageView;
}

- (WKMainPlayerInfoView *)infoView {
    if (!_infoView) {
        _infoView = [[WKMainPlayerInfoView alloc] initWithFrame:CGRectMake(0, self.musicCoverImageView.bottom + 30, APP_SCREEN_WIDTH, 50)];
    }
    
    return _infoView;
}

- (WKMusicSliderBar *)sliderBar {
    if (!_sliderBar) {
        _sliderBar = [[WKMusicSliderBar alloc] initWithFrame:CGRectMake(0, self.infoView.bottom + 10, APP_SCREEN_WIDTH, 40)];
    
    }
    
    return _sliderBar;
}

- (WKMainPlayerControlView *)controlView {
    if (!_controlView) {
        _controlView = [[WKMainPlayerControlView alloc] initWithFrame:CGRectMake(0, self.view.height - 60 - 40, APP_SCREEN_WIDTH, 60)];
    }
    
    return _controlView;
}

#pragma mark - 
#pragma mark WKMainPlayerNavBarDelegate

- (void)navBarTapLeftButton:(WKMainPlayerNavBar *)navBar {
    
}

- (void)navBarTapRightButton:(WKMainPlayerNavBar *)navBar {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
