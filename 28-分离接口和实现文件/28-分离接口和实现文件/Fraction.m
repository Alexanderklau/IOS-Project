//
//  Fraction.m
//  28-分离接口和实现文件
//
//  Created by lwb on 16/7/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numberator,denominator;
-(void) print
{
    NSLog(@"%i/%i",numberator,denominator);
}
-(double) covertToNum
{
    if (denominator != 0) {
        return (double) numberator/denominator;
    }
    else
        return NAN;
}
-(void) setTo:(int)n over:(int)d
{
    numberator = n;
    denominator = d;
}

@end
