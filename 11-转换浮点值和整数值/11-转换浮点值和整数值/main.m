//
//  main.m
//  11-转换浮点值和整数值
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float f1 = 123.125,f2;
        int i1,i2 = - 150;
        i1 = f1;
        NSLog(@"%f assigned to an int produces %i",f1,i1);//浮点数转换整数
        f1 = i2;
        NSLog(@"%i assigned to an int produces %f",i2,f1);//整数到浮点数的转换
        f1 = i2 /100;
        NSLog(@"%i assigned by 100 produces %f",i2,f1);//整数除整数
        f2 = i2 / 100;
        NSLog(@"%i assigned by 100 produces %f",i2,f2);//整数强制转换运算符
        f2 = (float) i2 /100;
        NSLog(@"(float) %i divided by 100 produces %f",i2,f2);//类型强制转换
    
        
    }
    return 0;
}
