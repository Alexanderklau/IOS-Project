//
//  main.m
//  17-倒序显示数字
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number,right_digit;
        NSLog(@"Enter your number!\n");
        scanf("%i",&number);
        while (number != 0) {
            right_digit = number % 10;
            NSLog(@"%i",right_digit);
            number /= 10;
        }
        
    }
    return 0;
}
