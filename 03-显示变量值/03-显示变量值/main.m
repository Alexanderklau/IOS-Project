//
//  main.m
//  03-显示变量值
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int sum;
        sum = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i\n",sum);
        int value1,value2,sum1;
        value1 = 20;
        value2 = 30;
        sum1 = value1 + value2;
        NSLog(@"The sum of %i and %i is %i",value1,value2,sum1);
    }
    return 0;
}
