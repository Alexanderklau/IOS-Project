//
//  Fraction.h
//  类
//
//  Created by lwb on 16/4/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void)print;
-(void) setNumerator:(int) n;
-(void) setDenominator:(int) d;
-(int) number;
-(int) denominator;
-(double) coverToNum;
@end
