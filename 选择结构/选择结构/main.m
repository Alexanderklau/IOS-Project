//
//  main.m
//  选择结构
//
//  Created by lwb on 16/4/20.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        NSLog(@"Type in your number:");
        scanf("%i",&number);
        if (number < 0) {
            number = - number;
            NSLog(@"The absolute value is %i",number);
        }
    }
    return 0;
}
