//
//  Fraction.m
//  多参数计算方法
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize number,denominator;
-(void) print
{
    NSLog(@"%i/%i",number,denominator);
}
-(double) coverToNum
{
    if (denominator != 0)
        return (double) number / denominator;
        else
        return NAN;
}
-(void)setTo:(int)n over:(int)d
{
    number = n;
    denominator = d;
}

@end
