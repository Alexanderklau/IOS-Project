//
//  main.m
//  09-运算符
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 100;
        int b = 25;
        int c = 2;
        int d = 4;
        int result;
        result = a - b;
        NSLog(@"a - b = %i",result);
        result = a + b;
        NSLog(@"a + b = %i",result);
        result = a * b;
        NSLog(@"a * b = %i",result);
        result = a + b * c;
        NSLog(@"a * b + c = %i",result);
        NSLog(@"a * b - b * c + c = %i",a * b - b * c + c);
    }
    return 0;
}
