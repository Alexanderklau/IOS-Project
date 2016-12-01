//
//  main.m
//  多参数计算方法
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFaction = [[Fraction alloc]init];
        [aFaction setTo:100 over:200];
        [aFaction print];
        [aFaction setTo:1 over:3];
        [aFaction print];
    }
    return 0;
}
