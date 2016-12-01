//
//  ViewController.m
//  UIButton(按钮)
//
//  Created by lwb on 16/5/4.
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

- (IBAction)touchup:(id)sender {
    self.background.enabled = !(self.background.enabled);
    self.stop.enabled = !(self.stop.enabled);
    if ([[sender titleForState:UIControlStateNormal] isEqualToString:@"禁用"]) {
        [sender setTitle:@"启用" forState:UIControlStateNormal];
        }
    else
    {
        [sender setTitle:@"禁用" forState:UIControlStateNormal];
    }
}
@end
