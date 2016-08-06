//
//  WKRootViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/5/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKRootViewController.h"

@interface WKRootViewController()

@property (nonatomic, strong) WKImageView *imageView;

@end

@implementation WKRootViewController

#pragma mark - 
#pragma mark Life Cycles

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
    
    self.imageView.imageUrlString = @"http://img1.ph.126.net/KTR6BiWabyqPdq9pCwTBgw==/6631812135071925499.jpg";
    
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



@end
