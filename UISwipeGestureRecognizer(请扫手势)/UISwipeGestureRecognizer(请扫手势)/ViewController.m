//
//  ViewController.m
//  UISwipeGestureRecognizer(请扫手势)
//
//  Created by lwb on 16/5/19.
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
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.uiview.layer.borderWidth = 2;
    self.uiview.multipleTouchEnabled = YES;
    self.uiview.userInteractionEnabled = YES;
    self.uiview.multipleTouchEnabled = YES;
    for (int i = 0; i < 4; i++) {
        UISwipeGestureRecognizer *gesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleSwipe:)];
        gesture.numberOfTouchesRequired = 1;
        gesture.direction = 1 << i;
        [self.uiview addGestureRecognizer:gesture];
    }
    // Dispose of any resources that can be recreated.
}
- (void) handleSwipe:(UISwipeGestureRecognizer *)gesture
{
    NSUInteger direction = gesture.direction;
    NSString *dirStr = direction ==
    UISwipeGestureRecognizerDirectionRight
    ? @"向右" :(direction ==
              UISwipeGestureRecognizerDirectionLeft
              ? @"向左" :(direction ==
                        UISwipeGestureRecognizerDirectionUp
                        ?@"向上":@"向下"));
    NSUInteger touchNum = gesture.numberOfTouchesRequired;
    self.label.text = [NSString stringWithFormat:@"用户使用 %d 个手指进行轻扫，方向为 %@",touchNum,dirStr];
    [self.label performSelector:@selector(setText:) withObject:@"" afterDelay:2];
}

@end
