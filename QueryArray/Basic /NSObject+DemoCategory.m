//
//  NSObject+DemoCategory.m
//  QueryArray
//
//  Created by Duy Dang on 12/18/15.
//  Copyright © 2015 Duy Dang. All rights reserved.
//

#import "NSObject+DemoCategory.h"

@implementation NSObject (DemoCategory)
- (NSArray *) array2 {
    NSMutableArray *array2 = [[NSMutableArray alloc] init];
    for (NSObject *object in self) {
        if (![array2 containsObject:object]) {
            [array2 addObject:object];
        }
    }return array2;
}
@end
