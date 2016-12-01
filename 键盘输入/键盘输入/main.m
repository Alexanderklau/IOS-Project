//
//  main.m
//  键盘输入
//
//  Created by lwb on 16/4/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,number,triangularNmber;
        NSLog(@"What triangularNumber number do you want?");
        scanf("%i",&number);
        triangularNmber = 0;
        for (n=1; n<number; ++n) {
            triangularNmber += n;
            NSLog(@"Triangularnumber number %i is %i200\n",number,triangularNmber);
        }
    }
    return 0;
}
