//
//  main.m
//  05-分数程序\类版本
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
@end
@implementation Fraction
{
    int numberator;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i",numberator,denominator);
}
-(void) setNumerator:(int)n
{
    numberator = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myfraction;
        myfraction = [Fraction alloc];
        myfraction = [myfraction init];
        [myfraction setNumerator:1];
        [myfraction setDenominator:3];
        NSLog(@"The value of myfraction is:");[myfraction print];
        
    }
    return 0;
}
