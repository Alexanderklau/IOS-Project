//
//  ViewController.m
//  模态视图
//
//  Created by lwb on 16/4/21.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(registerCompletion:) name:@"Registernotifucation" object:nil];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)registerCompletion:(NSNotification *)notification
{
    NSDictionary *thedata = [notification userInfo];
    NSString *username = [thedata objectForKey:@"username"];
    NSLog(@"username = %@",username);
}

@end
