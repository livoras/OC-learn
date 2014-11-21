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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Person *jerry = [[Person alloc] initWithName:@"Lucy" forWhom:@"Jerry"];
        NSLog([jerry sayYouName:@"FUCKYOU"]);
        NSLog(jerry.privateStr);
        [jerry sayHi];
        
        Baby *baby = [[Baby alloc] initWithName:@"Kathy" forWhom:@"Tomy"];
        NSLog([baby sayComputerName]);
        [baby sayHi];
        NSLog(baby.computer.name);
    }
    return 0;
}
