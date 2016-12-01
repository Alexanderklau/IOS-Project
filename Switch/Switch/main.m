//
//  main.m
//  Switch
//
//  Created by lwb on 16/4/23.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char score = 'c';
        switch (score) {
            case 'a':
                NSLog(@"nice!\n");
                break;
                case 'b':
                NSLog(@"ok\n");
                break;
                case 'c':
                NSLog(@"bad");
                break;
                default:
                NSLog(@"Error!");
        }
    }
}
