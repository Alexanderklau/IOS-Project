//
//  main.m
//  28-分离接口和实现文件
//
//  Created by lwb on 16/7/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc]init];
        [myFraction setTo:100 over:200];
        [myFraction print];
        [myFraction setTo:1 over:3];
        [myFraction print];
    }
    return 0;
}
