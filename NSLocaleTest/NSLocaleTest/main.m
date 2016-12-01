//
//  main.m
//  NSLocaleTest
//
//  Created by lwb on 16/5/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *locales = [NSLocale availableLocaleIdentifiers];
        for (int i = 0; i < locales.count;i++) {
            NSString *localeId = [locales objectAtIndex:i];
            NSLog(@"%@",localeId);
            NSLocale *curlocale = [NSLocale currentLocale];
            NSLog(@"当前locale: %@",curlocale.localeIdentifier);
            NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
            NSArray *languages = [defs objectForKey:@"Applelangugaes"];
            NSLog(@"所有语言包括 %@",languages);
            NSLog(@"首选语言 %@",[languages objectAtIndex:0]);

        }
    }
    return 0;
}
