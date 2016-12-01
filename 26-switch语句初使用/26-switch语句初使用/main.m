//
//  main.m
//  26-switch语句初使用
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Calculator:NSObject
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accmulator;
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) muliply:(double) value;
-(void) divide:(double) value;
@end

@implementation Calculator
{
    double accmulator;
}
-(void) setAccumulator:(double)value
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
-(void)muliply:(double)value
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
        double value1,value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc]init];
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf",&value1,&operator,&value2);
        [deskCalc setAccumulator:value1];
        switch (operator) {
            case '+':
                [deskCalc add:value2];
                break;
            case '-':
                [deskCalc subtract:value2];
            case '*':
                [deskCalc muliply:value2];
            case '/':
                [deskCalc divide:value2];
            default:
                NSLog(@"Unkown operator");
                break;
        }
        NSLog(@"%.2f",[deskCalc accmulator]);
        
        
    }
    return 0;
}
