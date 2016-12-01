//
//  main.m
//  22-正负函数
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number,sign;
        NSLog(@"Please type in a number:");
        scanf("%i",&number);
        if (number < 0)
            sign = -1;
        else if (number == 0)
            sign = 0;
        else
            sign = -1;
        NSLog(@"sign = %i",sign);
    }
    return 0;
}
