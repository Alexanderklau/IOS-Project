//
//  main.m
//  19-选择结构(if-2)
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction:NSObject
-(void) print;
-(void) setNumber:(int) n;
-(void) setDenominator:(int) d;
-(int) number;
-(int) denominator;
-(double) coverTonNum;
@end
@implementation Fraction
{
    int number;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i",number,denominator);
}
-(void) setNumber:(int)n
{
    number = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}
-(int) number
{
    return number;
}
-(int) denominator
{
    return denominator;
}
-(double)coverTonNum
{
    if (denominator != 0)
        return (double) number / denominator;
        else
        return NAN;
    
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        [aFraction setNumber:1];
        [bFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g",[aFraction coverTonNum]);
        
        [bFraction print];
        NSLog(@" =");
        NSLog(@"%g",[bFraction coverTonNum]);
        
    }
    return 0;
}
