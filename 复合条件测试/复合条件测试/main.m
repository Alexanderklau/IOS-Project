//
//  main.m
//  复合条件测试
//
//  Created by lwb on 16/4/20.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year,rem_4,rem_100,rem_400;
        NSLog(@"Enter the year to be tested: ");
        scanf("%i",&year);
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        if ((rem_4 && rem_100 != 0)||rem_400 == 0)
            NSLog(@"It is a leap year.");
            else
            NSLog(@"Nope,it is a leap year.");
        
    }
    return 0;
}
