//
//  Fraction.m
//  分数操作
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
        return (double) number/denominator;
        else
            return NAN;
}
-(void)setTo:(int)n over:(int)d
{
    number = n;
    denominator = d;
}
-(void) add:(Fraction *)f
{
    number = number *f.denominator + denominator *f.number;
    denominator = denominator * f.denominator;
}

@end
