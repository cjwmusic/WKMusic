//
//  WKUtil.m
//  WKMusic
//
//  Created by Wu Kong on 8/6/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKUtil.h"

@implementation WKUtil

+ (UIImage *)createImageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 24, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
