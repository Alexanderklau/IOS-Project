//
//  main.m
//  累加
//
//  Created by lwb on 16/4/23.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Calculater:NSObject
-(void) setAcnumber: (double) value;
-(void) clear;
-(double) accmulator;
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) mulitiply: (double) value;
-(void) dicide:(double) value;
@end

@implementation Calculater
{
    double accmulator;
}
-(void) setAcnumber:(double)value
{
    accmulator = value;
}
-(void)clear
{
    accmulator = 0;
}
-(double)accmulator
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
-(void)mulitiply:(double)value
{
    accmulator *= value;
    
}
-(void)dicide:(double)value
{
    accmulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculater *deskCalc = [[Calculater alloc]init];
        [deskCalc setAcnumber:100.0];
        [deskCalc add:200.];
        [deskCalc dicide:15.0];
        [deskCalc subtract:10.0];
        [deskCalc mulitiply:5];
        NSLog(@"The result is %g",[deskCalc accmulator]);
    }
    return 0;
}
