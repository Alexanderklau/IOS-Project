//
//  ViewController.m
//  UIPickerView(选择器)
//
//  Created by lwb on 16/5/6.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *human;

- (void)viewDidLoad {
    [super viewDidLoad];
    human = [NSArray arrayWithObjects:@"毛泽东",@"周恩来",@"邓小平",@"江泽民",@"习近平",nil];
    self.datapicker.dataSource = self;
    self.datapicker.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberof

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
