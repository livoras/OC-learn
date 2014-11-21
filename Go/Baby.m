//
//  Baby.m
//  Go
//
//  Created by 戴嘉华 on 14/11/21.
//  Copyright (c) 2014年 戴嘉华. All rights reserved.
//

#import "Baby.h"

@implementation Baby

- (Baby *) initWithName:(NSString *)na forWhom:(NSString *)who {
    self = [super initWithName:na forWhom:who];
    _computer = [[Computer alloc] init];
    return [super init];
}

- (NSString *)sayComputerName {
    NSLog(@"%@ is computer's name", _computer.name);
    return _computer.name;
}

// 随便重写父类的方法，而无需要在interface中进行声明。
// 类的追溯方法和JavaScript的原型链追溯一样：一直往上找

- (void) sayHi {
    NSLog(@"Hello Baby");
}

@end
