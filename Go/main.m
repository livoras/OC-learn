//
//  main.m
//  Go
//
//  Created by 戴嘉华 on 14/11/20.
//  Copyright (c) 2014年 戴嘉华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Baby.h"
#import "Foo.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *jerry = [[Person alloc] initWithName:@"Lucy" forWhom:@"Jerry"];
        NSLog([jerry sayYouName:@"FUCKYOU"]);
        NSLog(jerry.privateStr);
        [jerry sayHi];
        Baby *baby = [[Baby alloc] initWithName:@"Kathy" forWhom:@"Tomy_"];
        NSLog([baby sayComputerName]);
        [baby sayHi];
        NSLog(baby.computer.name);
        
        // 通过id声明变量，这个变量可以在运行时候才绑定到特定的对象上
        // That says,  dynamic typing: 直到运行时候才确定某个变量绑定的是哪个对象
        id poly;
        poly = [[Foo alloc] init];
        [poly sayHi];
        [baby sayHi];
        
        
        // 判断某个实例是否有某个方法
        [poly respondsToSelector:@selector(sayHi)];
        
        // 使用selector加上performSelector可以实现动态方法绑定。
        SEL action = @selector(sayHi);
        action = @selector(fuckyou);
        if ([poly respondsToSelector:action]) {
            [poly performSelector:action withObject:@"Tomy."];
        } else {
            NSLog(@"fuckyou");
        }
        
        // isKindOfClass               :判断某个对象是不是某个类的实例或者这类的子类的实例
        if ([baby isKindOfClass:[Person class]])
            NSLog(@"baby is kind of class Person");
        
        if ([baby isKindOfClass:[NSObject class]])
            NSLog(@"baby is kind of NSObject");
        
        // isMemberOfClass 判断某个实例是否某个类的实例
        if ([baby isMemberOfClass:[Person class]])
            NSLog(@"baby is member of Person"); // will not show
        if ([baby isMemberOfClass:[Baby class]]) // will show
            NSLog(@"baby is member of Baby");
        
        // isSubclassOfClass 判断某个类是否某个类的子类
        if ([Baby isSubclassOfClass:[Person class]])
            NSLog(@"Baby class is subclass of Person"); // will show.
        if ([Computer isSubclassOfClass:[Person class]])
            NSLog(@"Computer is subclass of Person"); // will not show.
        
        // instancesRespondToSelector 判断某个类的实例是否有某个方法
        if ([Baby instanceMethodForSelector:@selector(fuckyou:)]) {
            NSLog(@"Baby has method: fuckyou");
            Baby *b = [[Baby alloc] init];
            [b fuckyou:@"caicai"];
        }
        
        // 异常处理：@try & @catch
        
        @try {
            NSArray *array = [NSArray array];
            [array objectAtIndex:1];
        } @catch (NSException *exception) {
            NSLog(@"There will be no sunshine if i lose you baby."); // show
        } @finally {
            NSLog(@"I will be called whatever what happened."); // show
        }
        
    }
    return 0;
}
