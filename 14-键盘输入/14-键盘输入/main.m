//
//  main.m
//  14-键盘输入
//
//  Created by lwb on 16/7/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,number,triangularnumber;
        NSLog(@"What triangularnumber number do you want?");
        scanf("%i",&number);
        triangularnumber = 0;
        for (n = 1; n <= number; ++n) {
            triangularnumber += n;
            NSLog(@"Triangularnumber number %i is %i \n",number,triangularnumber);
        }
    }
    return 0;
}
