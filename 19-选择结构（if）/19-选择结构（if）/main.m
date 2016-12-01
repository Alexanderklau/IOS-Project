//
//  main.m
//  19-选择结构（if）
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a;
        NSLog(@"Please input a number!\n");
        scanf("%i",&a);
        if (a < 0) {
            a = - a;
            NSLog(@"The number is %i",a);
        }
        
    }
    return 0;
}
