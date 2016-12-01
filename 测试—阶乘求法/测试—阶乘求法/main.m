//
//  main.m
//  测试—阶乘求法
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,tirangularnumnber;
        NSLog(@"What triangularnumber do you want?\n");
        tirangularnumnber = 1;
        for (n = 1; n <= 10; ++n) {
            tirangularnumnber *= n;
            NSLog(@"Triangular number %i is %i \n",n,tirangularnumnber);
        }
    }
    return 0;
}
