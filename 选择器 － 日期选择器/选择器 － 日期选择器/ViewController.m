//
//  ViewController.m
//  选择器 － 日期选择器
//
//  Created by lwb on 16/4/19.
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


- (IBAction)action:(id)sender {
    NSDate * thedate = self.datepicker.date;
    NSLog(@"The date picked is:%@",[thedate descriptionWithLocale:[NSLocale currentLocale]]);
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.dateFormat = @"YYYY-MM-dd HH:mm:ss";
    NSLog(@"The date formate is:%@",[dateFormatter stringFromDate:thedate]);
    self.label.text = [dateFormatter stringFromDate:thedate];
    
    
    
}
@end
