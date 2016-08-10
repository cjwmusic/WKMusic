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

@interface WKMainPlayerViewController()

@property (nonatomic, strong) WKMainPlayerNavBar *navBar;
@property (nonatomic, strong) WKBlurView *blurView;
@property (nonatomic, strong) WKImageView *backgroundImageView;

@end

@implementation WKMainPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViews];
    [self loadData];
}

- (void)initViews {
    
    [self.view addSubview:self.backgroundImageView];
    [self.view addSubview:self.blurView];
    [self.view addSubview:self.navBar];
}

- (void)loadData {
    self.backgroundImageView.imageUrlString = @"http://img0.ph.126.net/dGlTX7fwuT5MPHCSuTkgnQ==/2003538884326501794.jpg";
    self.navBar.title = @"南方姑娘";
    self.navBar.subTitle = @"赵雷";
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

@end
