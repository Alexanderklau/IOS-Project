//
//  Fraction.h
//  多参数计算方法
//
//  Created by lwb on 16/4/26.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int number,denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) coverToNum;
@end
