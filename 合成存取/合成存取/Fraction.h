//
//  Fraction.h
//  合成存取
//
//  Created by lwb on 16/4/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int number,denomiator;
-(void) print;
-(double) coverToNum;

@end
