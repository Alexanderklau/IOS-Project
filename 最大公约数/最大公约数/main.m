//
//  main.m
//  最大公约数
//
//  Created by lwb on 16/4/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u,v,temp;
        NSLog(@"Please type in two noonegative integers.");
        scanf("%u%u",&u,&v);
        while (v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"Their greatset common divisor is %u",u);
    }
    return 0;
}
