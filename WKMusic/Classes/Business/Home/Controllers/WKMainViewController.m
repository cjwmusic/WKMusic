
//
//  WKMainViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/12/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainViewController.h"

@implementation WKMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKLoopPageView *loopView = [[WKLoopPageView alloc] initWithFrame:CGRectMake(0, 0, APP_SCREEN_WIDTH, APP_SCREEN_WIDTH * 0.6)];
    loopView.imageUrls = @[@"http://img1.ph.126.net/KoJqLGU6_McSdX9E3NUntQ==/6597963669611515375.jpg",
                           @"http://img2.ph.126.net/19NnPNG47sJuxOZZ1MlWsQ==/2008042483953849758.jpg",
                           @"http://img2.ph.126.net/1wSlVHybnlNVmLFzGJUSMQ==/2165668470911813819.jpg"];
    [self.view addSubview:loopView];

    
}

@end
