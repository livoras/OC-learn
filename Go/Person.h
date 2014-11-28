//
//  Person.h
//  Go
//
//  Created by 戴嘉华 on 14/11/20.
//  Copyright (c) 2014年 戴嘉华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (NSString *)sayYouName:(NSString *)greeting;
- (Person *)initWithName:(NSString *)name forWhom:(NSString *)who;
- (void) fuckyou:(NSString *)name;
- (void) sayHi;

// 所有property都是局部变量的getter和setter的组合！
// property 其实也是message，两个message：getter和setter。
// 实际所有的对象变量都是封装在implementation里的variables block
// 当一个对象用var.propertyName来获取变量名的时候，其实就是调用[var propertyName]
// 当一个对象用var.propertyName = xxx 来进行变量名的赋值的时候，其实是调用[var setPropertyName]

// 即使一个class的interface中没有这个property，而有getter和setter方法的时候。也可以通过`.`来获取或者设置类名

// @propertye语法其实就是系统自动把我们设置了两个方法：getter和setter来获取和设置对象的变量
- (NSString *)privateStr;
- (void) setPrivateStr:(NSString *)str;

@property (readonly) NSString *name;
@property (readonly) NSString *who;

@end
