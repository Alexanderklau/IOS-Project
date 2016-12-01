//
//  main.m
//  do语句
//
//  Created by lwb on 16/4/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number,right_digit;
        NSLog(@"Enter your number");
        scanf("%i",&number);
        do{
            right_digit = number % 10;
            NSLog(@"%i",right_digit);
            number /= 10;
            
        }
        while (number != 10);
    }
    return 0;
}
