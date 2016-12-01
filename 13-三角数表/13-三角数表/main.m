//
//  main.m
//  13-三角数表
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,triangualrNumber;
        NSLog(@"Table of trianGular numbers");
        NSLog(@"n sum from 1 to n");
        NSLog(@"----------------------------");
        triangualrNumber = 0;
        for (n = 1; n <= 10; ++n) {
            triangualrNumber += n;
            NSLog(@"%i------------------%i",n,triangualrNumber);
        }
    }
    return 0;
}
