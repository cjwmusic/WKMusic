//
//  WKBaseViewController.m
//  WKMusic
//
//  Created by Wu Kong on 8/5/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKBaseViewController.h"

@interface WKBaseViewController()

@end

@implementation WKBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:kWKColorBackgroundColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setHiddenNavNar:self.hiddenNavNar];
}

- (void)setHiddenNavNar:(BOOL)hiddenNavNar {
    _hiddenNavNar = hiddenNavNar;
    BOOL isHidden = [self.navigationController isNavigationBarHidden];
    if (isHidden != hiddenNavNar) {
        [self.navigationController setNavigationBarHidden:hiddenNavNar animated:NO];
    }
}
@end
