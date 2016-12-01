//
//  main.m
//  改进if
//
//  Created by lwb on 16/4/20.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction:NSObject
-(void) print;
-(void) setNumberator:(int)n;
-(void) setDenominator:(int)d;
-(int) numberator;
-(int) denominator;
-(double) coverToNUm;
@end


@implementation Fraction
{
    int numberator;
    int denominator;
}

-(void)print
{
    NSLog(@" %i/%i ",numberator,denominator);
}
-(void)setNumberator:(int)n
{
    numberator = n;
}
-(void)setDenominator:(int)d
{
    denominator = d;
}
-(int)numberator
{
    return numberator;
}
-(int)denominator
{
    return denominator;
}
-(double) coverToNUm
{
    if (denominator != 0)
        return (double)numberator / denominator;
       else
           return NAN;
    
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        [aFraction setNumberator:1];
        [aFraction setDenominator:4];
        [aFraction print];
        NSLog(@" = ");
        NSLog(@"%g",[aFraction coverToNUm]);
        [bFraction print];
        NSLog(@" = ");
        NSLog(@"%g",[bFraction coverToNUm]);
    }
    return 0;
}
