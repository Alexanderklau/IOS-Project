//
//  ViewController.m
//  UIDatePicker(显示日期)
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
    NSDate *selected = [self.datePicker date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy年MM月dd日HH:mm"];
    NSString *destFateString = [dateFormatter stringFromDate:selected];
    NSString *message = [NSString stringWithFormat:@"您选择的日期是: %@",destFateString];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"日期和时间" message:message delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alert show];
}
@end
