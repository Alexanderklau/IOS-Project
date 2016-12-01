//
//  ViewController.m
//  UIalertView(输入框)
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

- (IBAction)clicked:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登陆" message:@"请输入用户名和密码" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert textFieldAtIndex:1].keyboardType = UIKeyboardTypeNumberPad;
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        UITextField *nameField = [alertView textFieldAtIndex:0];
        UITextField *passField = [alertView textFieldAtIndex:1];
        NSString *msg = [NSString stringWithFormat:@"您输入的用户名为:%@,密码为:%@",nameField.text,passField.text];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
    
}
-(void) willPresentAlertView:(UIAlertView *)alertView
{
    for (UIView *view in alertView.subviews) {
        if ([view isKindOfClass:[UILabel class]]) {
            UILabel *label =(UILabel *)view;
        }
    }
}
@end
