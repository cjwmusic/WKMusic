//
//  WKItem.m
//  WKMusic
//
//  Created by Wu Kong on 8/9/16.
//  Copyright © 2016 wukong. All rights reserved.
//

#import "WKItem.h"
#import "YYModel.h"

@implementation WKItem

+ (instancetype)itemWithDictionary:(NSDictionary *)dictionary {
    WKItem *item = [[self class] yy_modelWithJSON:dictionary];
    return item;
}

+ (NSArray *)itemsWithArray:(NSArray *)array {
    
    NSMutableArray *items = [NSMutableArray array];
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [items addObject:[self itemWithDictionary:obj]];
    }];
    
    return items.copy;
}

@end
