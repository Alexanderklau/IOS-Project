//
//  main.m
//  for语句
//
//  Created by lwb on 16/4/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int b = 0,s = 0,p = 0;
             b < 10 && s < 4 && p < 10; p++)
        {
            NSLog(@"b:%d",b++);
            NSLog(@"s:%d,p:%d",++s ,p);
        }
            
        
    }
    
    return 0;
}
