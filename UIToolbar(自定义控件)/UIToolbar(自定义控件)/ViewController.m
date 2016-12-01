//
//  ViewController.m
//  UIToolbar(自定义控件)
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
UIProgressView *prog;
NSTimer *timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIToolbar *mytoolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 400, 44)];
    [self.view addSubview:mytoolbar];
    UIBarButtonItem *bn1 = [[UIBarButtonItem alloc]initWithTitle:@"ok" style:UIBarButtonItemStylePlain target:self action:@selector(clicked:)];
    UIBarButtonItem *bn2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(clicked:)];
    UIBarButtonItem *bn3 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIButtonTypeContactAdd target:self action:@selector(clicked:)];
    UIBarButtonItem *
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
