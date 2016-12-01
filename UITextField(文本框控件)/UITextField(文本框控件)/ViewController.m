//
//  ViewController.m
//  UITextField(文本框控件)
//
//  Created by lwb on 16/5/4.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)finishEdit:(id)sender;
- (IBAction)backup:(id)sender;


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

- (IBAction)finishEdit:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backup:(id)sender {
    [self.passwordField resignFirstResponder];//让password控件放弃作为第一响应者
    [self.nameFiled resignFirstResponder];//让name控件放弃成为第一响应者
}

@end
