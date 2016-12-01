//
//  ViewController.m
//  UIAlertView(警告框)
//
//  Created by lwb on 16/5/6.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"确定关闭？" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"按钮一",@"按钮二",@"按钮三" ,nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *msg = [NSString stringWithFormat:@"您点击了第%d个按钮",buttonIndex];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
    
}
@end
