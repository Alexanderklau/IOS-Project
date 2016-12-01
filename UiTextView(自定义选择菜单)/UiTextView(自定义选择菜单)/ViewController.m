//
//  ViewController.m
//  UiTextView(自定义选择菜单)
//
//  Created by lwb on 16/5/5.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIMenuItem *mainShare = [[UIMenuItem alloc]initWithTitle:@"邮件分享" action:@selector(mainShare:)];
    UIMenuItem *weiboshare = [[UIMenuItem alloc]initWithTitle:@"微博分享" action:@selector(weiboShare:)];
    UIMenuController *menu = [UIMenuController sharedMenuController];
    [menu setMenuItems:[NSArray arrayWithObjects:mainShare,weiboshare,nil]];
    // Do any additional setup after loading the view, typically from a nib.
}
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (action == @selector(mainShare:) || action == @selector(weiboShare:)) {
        if (self.textview.selectedRange.length > 0)
            return YES;
        }
        return  NO;
}
-(void)mainShare:(id)sender
{
    NSLog(@"模拟通过邮件");
}
-(void)weiboShare:(id)sender
{
    NSLog(@"模拟通过微博分享");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
