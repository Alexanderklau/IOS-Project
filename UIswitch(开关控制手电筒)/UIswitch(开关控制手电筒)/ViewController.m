//
//  ViewController.m
//  UIswitch(开关控制手电筒)
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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgorund:(id)sender {
    if ([sender isOn]== YES) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
}
@end
