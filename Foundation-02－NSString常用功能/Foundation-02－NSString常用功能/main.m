//
//  main.m
//  Foundation-02－NSString常用功能
//
//  Created by lwb on 16/7/15.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Hello!";
        NSString *book = @"MATH";
        str = [str stringByAppendingString:@"IOS1"];//新生的字符串赋值str变量
        NSLog(@"%@",str);
        const char *cstr = [str UTF8String];//获取c风格的字符串
        NSLog(@"获取的c风格字符串:%s",cstr);
        str = [str stringByAppendingFormat:@"%@ is a nice book!",book];
        NSLog(@"%@",str);
        NSLog(@"STR字符个数为 :%1u",[str length]);
        
        
        
        
    }
    return 0;
}
