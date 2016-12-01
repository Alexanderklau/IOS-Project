//
//  main.m
//  15-嵌套循环for
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,number,triangularnumber,counter;
        for (counter = 1; counter <= 5; ++counter) {
            NSLog(@"What triangular number do you want?\n");
            scanf("%i",&number);
            triangularnumber = 0;
            for (n = 1; n <= number; ++n) {
                triangularnumber += n;
                NSLog(@"Triangularnumber %i is %i",number,triangularnumber);
            }
        }
    }
    return 0;
}
