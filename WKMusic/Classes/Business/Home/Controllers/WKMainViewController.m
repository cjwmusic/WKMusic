
//
//  WKMainViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/12/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKMainViewController.h"
#import "WKMainPlayerViewController.h"

@implementation WKMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.hiddenNavNar = YES;
    
    WKLoopPageView *loopView = [[WKLoopPageView alloc] initWithFrame:CGRectMake(0, 0, APP_SCREEN_WIDTH, APP_SCREEN_WIDTH * 0.6)];
    loopView.imageUrls = @[@"http://img1.ph.126.net/KoJqLGU6_McSdX9E3NUntQ==/6597963669611515375.jpg",
                           @"http://img2.ph.126.net/19NnPNG47sJuxOZZ1MlWsQ==/2008042483953849758.jpg",
                           @"http://img2.ph.126.net/1wSlVHybnlNVmLFzGJUSMQ==/2165668470911813819.jpg"];
    [self.view addSubview:loopView];

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((self.view.width - 100) * 0.5, loopView.bottom + 40, 100, 40)];
    [button setTitle:@"Listen" forState:UIControlStateNormal];
    button.layer.cornerRadius = 3.0;
    [button setBackgroundImage:[WKUtil createImageWithColor:[UIColor colorWithHexString:kWKColorYellowLevel]] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onTapListenButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

#pragma mark -
#pragma mark Events

- (void)onTapListenButton {

    WKMainPlayerViewController *playVC = [[WKMainPlayerViewController alloc] init];
    
    [self presentViewController:playVC animated:YES completion:nil];
    
//    [self.navigationController pushViewController:playVC animated:YES];
}

@end
