//
//  Fraction.m
//  类
//
//  Created by lwb on 16/4/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int number;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i",number,denominator);
}
-(void)setNumerator:(int)n
{
    number = n;
    
}
-(void)setDenominator:(int)d
{
    denominator = d;
}
-(int)number
{
    return number;
}
-(int)denominator
{
    return  denominator;
}
-(double)coverToNum
{
    if (denominator != 0)
        return (double)number/denominator;
        else
            return NAN;
    
}


@end
