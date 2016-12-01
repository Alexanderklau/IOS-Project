//
//  main.m
//  06-分数程序／双分数
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Fraction:NSObject
-(void) print;
-(void) setnumberator:(int) n;
-(void) setdenominator:(int) d;
@end

@implementation Fraction
{
    int numberor;
    int denominator;
}

-(void) print
{
    NSLog(@"%i/%i",numberor,denominator);
}
-(void) setnumberator:(int)n
{
    numberor = n;
}
-(void) setdenominator:(int)d
{
    denominator = d;
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc]init];
        Fraction *frac2 = [[Fraction alloc]init];
        [frac1 setnumberator:2];
        [frac1 setdenominator:3];
        [frac2 setnumberator:4];
        [frac2 setdenominator:5];
        NSLog(@"First fraction is:");
        [frac1 print];
        NSLog(@"Second fraction is:");
        [frac2 print];
        
    }
    return 0;
}
