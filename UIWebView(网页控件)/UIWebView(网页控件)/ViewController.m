//
//  ViewController.m
//  UIWebView(网页控件)
//
//  Created by lwb on 16/5/7.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *sb = [[NSMutableString alloc]init];
    [sb appendString:@"<html>"];
    [sb appendString:@"<head>"];
    [sb appendString:@"<title> 欢迎！</title>"];
    [sb appendString:@"</head>"];
    [sb appendString:@"<body>"];
    [sb appendString:@"<h2>欢迎进入<a href=\"http://www.baidu.irg\">"];
    [sb appendString:@"吃人的公司！</a></h2>"];
    [sb appendString:@"script language = 'javascript'>"];
    [sb appendString:@"alert('欢迎使用UIWebView');</script>"];
    [sb appendString:@"</body>"];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
