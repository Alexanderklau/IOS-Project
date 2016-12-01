//
//  Fraction.m
//  合成存取
//
//  Created by lwb on 16/4/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize number,denomiator;
-(void)print
{
    NSLog(@"%i/%i",number,denomiator);
}
-(double) coverToNum
{
    if (denomiator != 0)
        return  (double) number /denomiator;
        else
            return NAN;
    
}

@end
