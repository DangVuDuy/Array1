//
//  DemoCallElement.m
//  QueryArray
//
//  Created by Duy Dang on 12/22/15.
//  Copyright © 2015 Duy Dang. All rights reserved.
//

#import "DemoCallElement.h"

@interface DemoCallElement ()

@end

@implementation DemoCallElement

- (void)viewDidLoad {
    [super viewDidLoad];
    int array1[10] = {8, 25, 11, 33, 15, 16, 100, 199, 255, 5};

    
    for (int i = 0; i < sizeof(array1)/sizeof(int); i++)  {
        int num = array1[i];
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterSpellOutStyle];
        
        NSString *s = [f stringFromNumber:[NSNumber numberWithInteger:num]];
        [self writeln:s];
    }
}


@end
