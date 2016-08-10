//
//  WKRootViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/5/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKRootViewController.h"
#import "WKUserItem.h"
#import "WKBlurView.h"

@interface WKRootViewController()

@property (nonatomic, strong) WKImageView *imageView;
@property (nonatomic, strong) WKBlurView *blurView;

@end

@implementation WKRootViewController

#pragma mark - 
#pragma mark Life Cycles

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.blurView];
    
    self.imageView.imageUrlString = @"http://img0.ph.126.net/dGlTX7fwuT5MPHCSuTkgnQ==/2003538884326501794.jpg";
}

#pragma mark - 
#pragma mark Getters

- (WKImageView *)imageView {
    if (!_imageView) {
        _imageView = [[WKImageView alloc] initWithFrame:self.view.bounds];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
    }
    
    return _imageView;
}

- (WKBlurView *)blurView {
    if (!_blurView) {
        _blurView = [[WKBlurView alloc] initWithFrame:self.view.bounds];
    }
    
    return _blurView;
}





@end
