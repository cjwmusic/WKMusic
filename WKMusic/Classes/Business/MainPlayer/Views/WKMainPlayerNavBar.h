//
//  WKMainPlayerNavBar.h
//  WKMusic
//
//  Created by Wu Kong on 8/10/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WKMainPlayerNavBar;
@protocol  WKMainPlayerNavBarDelegate <NSObject>

- (void)navBarTapLeftButton:(WKMainPlayerNavBar *)navBar;
- (void)navBarTapRightButton:(WKMainPlayerNavBar *)navBar;

@end

@interface WKMainPlayerNavBar : UIView

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, weak) id<WKMainPlayerNavBarDelegate> delegate;

@end

