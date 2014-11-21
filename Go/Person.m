//
//  Person.m
//  Go
//
//  Created by 戴嘉华 on 14/11/20.
//  Copyright (c) 2014年 戴嘉华. All rights reserved.
//

#import "Person.h"

static int count = 0;

@implementation Person { // 这个block用来声明局部变量
    NSString *privateStr;
}

- (Person *)init {
    count++;
    _name = @"Jerry";
    privateStr = @"hellowld";
    return [super init];
}

- (NSString *)privateStr {
    return privateStr;
}

- (void) setPrivateStr:(NSString *)str {
    privateStr = str;
}

- (void) sayHi {
    NSLog(@"Hello World.");
}


// 变量前面的描述是函数名的一部分，组成整个函数的名字！可读性杠杠的！
// 就是一串字符串里面如果塞了冒号，冒号后面就是跟着参数！
- (Person *)initWithName:(NSString *)name forWhom:(NSString *)who {
    count++;
    _name = name;
    _who = who;
    privateStr = @"hellowld";
    return [super init];
}

- (NSString *)sayYouName:(NSString *)greeting {
    return [NSString stringWithFormat:@"%@, %@, for %@ %@", greeting, _name, _who, privateStr];
}

@end