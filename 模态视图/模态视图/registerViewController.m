//
//  registerViewController.m
//  模态视图
//
//  Created by lwb on 16/4/21.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "registerViewController.h"
@interface registerViewController()
@property(weak,nonatomic)IBOutlet UITextField *txtusername;
-(IBAction)save:(id)sender;
-(IBAction)cancel:(id)sender;
@end



@implementation registerViewController
-(IBAction)save:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{NSLog(@"点击save，关闭模态视图");
     NSDictionary *dataDict = [NSDictionary dictionaryWithObject:self.txtusername.text forKey:@"username"];
        [[NSNotificationCenter defaultCenter]
        postNotificationName:@"RegisterCompletionNotification" object:nil
         userInfo:dataDict];
    }];
}
-(IBAction)cancel:(id)sender{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"点击cancel按钮，，关闭视图");
    }];
}

@end
