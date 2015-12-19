//
//  DemoFootball.m
//  QueryArray
//
//  Created by Duy Dang on 12/16/15.
//  Copyright © 2015 Duy Dang. All rights reserved.
//

#import "DemoFootball.h"
#import "NSObject+DemoCategory.h"

@interface DemoFootball ()

@end

@implementation DemoFootball


- (void)viewDidLoad {
    [super viewDidLoad];
    // in ra danh sach 11 cau thu barcelona ra san
     [self writeln:@"Danh sach doi bong Barcelona ra san :"];
    NSArray *team = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    for (int i = 0; i <= 10; i++) {
        NSDictionary *teamindext = [team objectAtIndex:i];
        [self writeln:[NSString stringWithFormat:@"%@ %@ %@", [teamindext objectForKey:@"Number"], [teamindext objectForKey:@"Location"], [teamindext objectForKey:@"Name"]]];
    }
        [self writeln:@"============================="];

    // in ra danh sach khong trung lap
    NSArray *array1 = @[@"a",@"a",@"ab",@"abc",@"abc",@"xyz",@"xyz"];
    NSArray *array2 = [array1 array2];
    [self writeln:@"Danh sach cac phan tu cua mang khong trung lap :"];
    for (NSString *num in array2) {
        [self writeln:num];
    }
}
@end
