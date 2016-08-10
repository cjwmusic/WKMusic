//
//  WKBlurView.m
//  WKMusic
//
//  Created by Wu Kong on 8/10/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKBlurView.h"

@implementation WKBlurView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.blurRadius = 15;
        self.tintColor = [UIColor blackColor];
    }
    
    return self;
}

@end
