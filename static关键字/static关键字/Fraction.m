//
//  Fraction.m
//  static关键字
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize number,denominator;
-(void) print
{
    NSLog(@"%i / %i",number,denominator);
}
-(void)add:(Fraction *)f
{
    number = number *f.denominator + denominator * f.number;
    denominator = denominator * f.denominator;
}
-(void) reduce
{
    int u = number;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    number /= u;
    denominator /= u;
    
}
-(double)coverToNum
{
    if (denominator != 0)
        return (double) number / denominator;
        else
        return NAN;
    
}

@end
