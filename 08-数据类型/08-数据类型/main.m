//
//  main.m
//  08-数据类型
//
//  Created by lwb on 16/7/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int integerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        NSLog(@"intergar = %i",integerVar);
        NSLog(@"floatingvar = %f",floatingVar);
        NSLog(@"doublevar = %e",doubleVar);
        NSLog(@"doublevar = %g",doubleVar);
        NSLog(@"charvar = %c",charVar);
    }
    return 0;
}
