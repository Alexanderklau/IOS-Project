//
//  ViewController.m
//  UIStepper（微调器）
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
    [self.stepr setDecrementImage:[UIImage imageNamed:@"minus.gif"] forState:UIControlStateNormal];
    [self.stepr setIncrementImage:[UIImage imageNamed:@"plus.gif"] forState:UIControlStateNormal];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)backup:(id)sender {
    [self.tf1 resignFirstResponder];
    [self.tf2 resignFirstResponder];
    [self.tf3 resignFirstResponder];
}

-(IBAction)value:(UIStepper *)sender
{
    switch (sender.tag) {
        case 1:
            self.tf1.text = [NSString stringWithFormat:@"%g",sender.value];
            break;
        case 2:
            self.tf2.text = [NSString stringWithFormat:@"%g",sender.value];
        case 3:
            self.tf3.text = [NSString stringWithFormat:@"%g",sender.value];
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
