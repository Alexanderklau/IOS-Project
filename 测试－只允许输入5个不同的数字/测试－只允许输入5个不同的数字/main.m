//
//  main.m
//  测试－只允许输入5个不同的数字
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,number,triangularnumber,counter;
        for (counter = 1; counter <= 5; ++counter) {
            NSLog(@"What triangular number do you want?");
            scanf("%i",&number);
            triangularnumber = 0;
            for (n = 1; n <= number; ++n) {
                triangularnumber += n;
                NSLog(@"Triangular number %i is %i",number,triangularnumber);
            }
        }
    }
    return 0;
}
