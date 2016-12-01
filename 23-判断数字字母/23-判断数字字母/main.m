//
//  main.m
//  23-判断数字字母
//
//  Created by lwb on 16/7/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c;
        NSLog(@"Enter a single charcter\n");
        scanf("%c",&c);
        if ((c >= 'a' && c<= 'z') || (c >= 'A' && c<= 'Z'))
            NSLog(@"It is an aplphabetic charcter.");
        else if (c >= '0' && c<= '9')
            NSLog(@"It is a digit");
        else
            NSLog(@"It is a special charcter");
        
    }
    return 0;
}
