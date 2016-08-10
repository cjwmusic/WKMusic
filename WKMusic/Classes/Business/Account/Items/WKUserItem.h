//
//  WKUserItem.h
//  WKMusic
//
//  Created by Wu Kong on 8/9/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKItem.h"

@interface WKUserItem : WKItem

@property (nonatomic, strong) NSString *userNick;
@property (nonatomic, strong) NSString *job;
@property (nonatomic, assign) NSInteger age;

@property (nonatomic, assign) BOOL isMen;

@end
