//
//  ViewController.m
//  UIPinch(处理捏合手势)
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.gv.layer.borderWidth = 2;
    self.gv.layer.cornerRadius = 6;
    self.gv.userInteractionEnabled = YES;
    self.gv.multipleTouchEnabled = YES;
    UIPinchGestureRecognizer *gesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(handLepinch:)];
    [self.gv addGestureRecognizer:gesture];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)handLepinch:(UIPinchGestureRecognizer *)gesture
{
    CGFloat velocity = gesture.velocity;
    CGFloat scale = gesture.scale;
    self.label.text = [NSString stringWithFormat:@"用户捏合的速度 %d,比例为 %g",velocity,scale];
    [self.label performSelector:@selector(setText:) withObject:@"" afterDelay:2];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
