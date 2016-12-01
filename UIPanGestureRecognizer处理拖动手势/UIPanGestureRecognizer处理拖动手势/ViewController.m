//
//  ViewController.m
//  UIPanGestureRecognizer处理拖动手势
//
//  Created by lwb on 16/5/24.
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
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handelePan:)];
    gesture.minimumNumberOfTouches = 1;
    gesture.minimumNumberOfTouches = 2;
    [self.gv addGestureRecognizer:gesture];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) handelePan:(UIPanGestureRecognizer *)gesture
{
    CGPoint velocity = [gesture velocityInView:self.gv];
    CGPoint translation = [gesture translationInView:self.gv];
    self.label.text = [NSString stringWithFormat:@"水平速度为 %g,垂直速度为 %g,垂直位移为 %g",velocity.x,velocity.y,translation.x,translation.y];
    [self.label performSelector:@selector(setText:) withObject:@"" afterDelay:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
