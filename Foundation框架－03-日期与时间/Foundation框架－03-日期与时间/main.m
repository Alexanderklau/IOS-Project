//
//  main.m
//  Foundation框架－03-日期与时间
//
//  Created by lwb on 16/7/15.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date1 = [NSDate date];
        NSLog(@"%@",date1);
        NSDate *date2 = [[NSDate alloc]
                         initWithTimeIntervalSinceNow:3600 *24];
        NSLog(@"%@",date2);
        NSDate *date3 = [[NSDate alloc]
                         initWithTimeIntervalSinceNow:- 3 *3600 * 24];
        NSLog(@"%@",date3);
        NSDate *date4 = [NSDate dateWithTimeIntervalSince1970:3600 * 24 * 366 * 20];
        NSLog(@"%@",date4);
        NSLocale *cn = [NSLocale currentLocale];
        NSLog(@"%@",[date1 descriptionWithLocale:cn]);
        NSDate *earlier = [date1 earlierDate:date2];
        NSDate *later = [date1 laterDate:date2];
        switch ([date1 compare:date3]) {
            case NSOrderedAscending:
                NSLog(@"date1 位于 date3 之前");
                break;
            case NSOrderedSame:
                NSLog(@"date1 与 date3 日期相等");
                break;
            case NSOrderedDescending:
                NSLog(@"date1 位于 date3 之后 ");
                break;
            default:
                break;
        }
        NSLog(@"date1 and date2 之间时间差 %g 秒",)
    }
    return 0;
}
