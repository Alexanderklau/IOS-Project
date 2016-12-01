//
//  main.m
//  11-定义新类
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//


#import <Foundation/Foundation.h>
@interface Caculator:NSObject
-(void) setAccmulator:(double) value;
-(void) clear;
-(double) accmulator;
-(void) add:(double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end
@implementation Caculator
{
    double accmulator;
}
-(void) setAccmulator:(double)value
{
    accmulator = value;
}
-(void) clear
{
    accmulator = 0;
}
-(double) accmulator
{
    return accmulator;
}
-(void)add:(double)value
{
    accmulator += value;
}
-(void)subtract:(double)value
{
    accmulator -= value;
}
-(void)multiply:(double)value
{
    accmulator *= value;
}
-(void)divide:(double)value
{
    accmulator /= value;
}
@end
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Caculator *deskCalc = [[Caculator alloc]init];
        [deskCalc setAccmulator:100.0];
        [deskCalc add:200.];
        [deskCalc subtract:15.0];
        [deskCalc multiply:43.0];
        [deskCalc divide:5];
        NSLog(@"The result is %g",[deskCalc accmulator]);
    
    }
    return 0;
}
