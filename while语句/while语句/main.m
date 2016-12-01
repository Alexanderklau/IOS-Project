//
//  main.m
//  while语句
//
//  Created by lwb on 16/4/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        int count = 1;
        while (count <= 5) {
            NSLog(@"%i",count);
            ++count;
        }
    }
    return 0;
}
