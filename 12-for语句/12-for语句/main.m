//
//  main.m
//  12-for语句
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,triangularnumber,k;
        triangularnumber = 0;
        for (n = 1; n <= 200; n = n + 1) {
            triangularnumber += n;
            NSLog(@"The 200th triaular number is %i",triangularnumber);
            for (k = 1; k <=100; k = k * ( k + 1)) {
                triangularnumber -= k;
                NSLog(@"The number is %i",triangularnumber);
            }
        }
        
    }
    return 0;
}
