//
//  ViewController.m
//  UILongPressGestureRecognizer处理手势
//
//  Created by lwb on 16/5/24.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
#define MARGINE 20
#define BUTTON_WIDTH 80
#define BUTTON_HEIGHT 30
#define CELL_WIDHT 100
#define CELL_HEIGHT 40

@implementation ViewController
NSInteger bnIndex;
NSMutableArray *bnArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    bnArray = [[NSMutableArray alloc]init];
    UILongPressGestureRecognizer *gesture = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
    [self.view addGestureRecognizer:gesture];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) longPress:(UILongPressGestureRecognizer *)gesture
{
    UIButton *bn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    NSInteger count = bnArray.count;
    NSInteger row = count / 3;
    NSInteger col = count % 3;
    [bn setTitle:[NSString stringWithFormat:@"按钮 %d",bnIndex] forState:UIControlStateNormal];
    bn.frame = CGRectMake(MARGINE + col * CELL_WIDHT, row * CELL_HEIGHT + MARGINE, BUTTON_WIDTH, BUTTON_HEIGHT);
    [bn addTarget:self action:@selector(remove:) forControlEvents:UIControlEventTouchUpInside];
    [bnArray addObject:bn];
    bnIndex ++;
    
}
- (void) remove:(id)sender
{
    [sender removeFromSuperview];
    [bnArray removeObject: sender];
    [self rearranger];
}
- (void) rearranger
{
    for (int i = 0; i < bnArray.count; i++) {
        NSInteger row = i / 3;
        NSInteger col = i % 3;
        UIButton *bn = [bnArray objectAtIndex:i];
        bn.frame = CGRectMake(MARGINE + col * CELL_WIDHT, row * CELL_HEIGHT + MARGINE, BUTTON_WIDTH, BUTTON_HEIGHT);
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
