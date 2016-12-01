//
//  main.m
//  21-判断闰年
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year,rem_4,rem_100,rem_400;
        NSLog(@"Enter the year to be tested :");
        scanf("%i",&year);
        rem_4 = year % 4;
        rem_100 = year % 100;
        rem_400 = year % 400;
        if ((rem_4 == 0 && rem_100 != 0)||rem_400 ==0)
            NSLog(@"It is a leap year");
            else
                NSLog(@"Nope,it is not leap year");
                
        
        
    }
    return 0;
}
