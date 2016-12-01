//
//  main.m
//  16-求两个数的最大公约数
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u,v,temp;
        NSLog(@"Please input 2 number!\n");
        scanf("%i%i",&u,&v);
        while ( v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        NSLog(@"Their greatest common divisor is %u",u);
    }
    return 0;
}
