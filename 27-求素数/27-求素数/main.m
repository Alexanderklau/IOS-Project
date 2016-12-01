//
//  main.m
//  27-求素数
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p,d,isprime;
        for (p = 2; p <= 50; p++) {
            isprime = 1;
            for (d = 2; d < p; ++d) {
                if (p % d == 0)
                    isprime = 0;
                
                if (isprime != 0)
                    NSLog(@"%i",p);
            }
        }
    }
    return 0;
}
