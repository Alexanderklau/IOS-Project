//
//  ViewController.m
//  UITextView(自定义键盘附件关闭键盘)
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
    UIToolbar *topview = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
    [topview setBarStyle:UIBarStyleDefault];
    UIBarButtonItem *muBn = [[UIBarButtonItem alloc]initWithTitle:@"无动作" style:UIBarButtonItemStyleBordered target:self action:nil];
    UIBarButtonItem *spaceBn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem *doneBn = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(editFinish)];
    NSArray *buttonsArray = [NSArray arrayWithObjects:muBn,spaceBn,doneBn,nil];
    [topview setItems:buttonsArray];
    [self.textview setInputAccessoryView:topview];

    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) editFinish
{
    [self.textview resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
