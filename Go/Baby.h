//
//  Baby.h
//  Go
//
//  Created by 戴嘉华 on 14/11/21.
//  Copyright (c) 2014年 戴嘉华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Computer.h"

// @class指令只是用来告诉编译器Computer是一个类的名字，然后后面的代码都会默认其是一个类的名字
// 这样好处就是免去了编译时候的import。但是在m文件还是需要import Computer类的
@class Computer;

@interface Baby : Person;

- (NSString *) sayComputerName;
@property Computer* computer;

@end
