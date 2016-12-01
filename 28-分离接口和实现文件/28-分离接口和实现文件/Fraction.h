//
//  Fraction.h
//  28-分离接口和实现文件
//
//  Created by lwb on 16/7/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numberator,denominator;
-(void) print;
-(void) setTo:(int) n over:(int) d;
-(double) covertToNum;


@end
