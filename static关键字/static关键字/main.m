//
//  main.m
//  static关键字
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        [aFraction setTo:1 over:4];
        [bFraction setTo:1 over:2];
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        [aFraction add:bFraction];
        [aFraction reduce];
        [aFraction print];
                               
            
    }
    return 0;
}
