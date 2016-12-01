//
//  main.m
//  生成三角数
//
//  Created by lwb on 16/4/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,triangulaNumber;
        NSLog(@"Table of triangular numbers");
        NSLog(@"n sum from 1 to n");
        NSLog(@"----------");
        triangulaNumber = 0;
        for (n=1; n<=10; ++n) {
            triangulaNumber += n;
            NSLog(@"%i      %i",n,triangulaNumber);
        }
    }
    return 0;
}
