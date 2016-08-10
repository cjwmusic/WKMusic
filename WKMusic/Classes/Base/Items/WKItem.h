//
//  WKItem.h
//  WKMusic
//
//  Created by Wu Kong on 8/9/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WKItem : NSObject

+ (instancetype)itemWithDictionary:(NSDictionary *)dictionary;
+ (NSArray *)itemsWithArray:(NSArray *)array;


@end
