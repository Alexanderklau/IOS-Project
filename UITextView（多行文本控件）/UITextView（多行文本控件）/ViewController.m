//
//  ViewController.m
//  UITextView（多行文本控件）
//
//  Created by lwb on 16/5/5.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UINavigationItem *navigation;

@end

@implementation ViewController
UIBarButtonItem *done;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textview.delegate = self;
    UINavigationBar *navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, 320, 44)];
    [self.view addSubview:navBar];
    self.navigation = [[UINavigationItem alloc]initWithTitle:@"导航条"];
    navBar.items = [NSArray arrayWithObject:self.navigation];
    done = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(finishEdit)];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textViewDidEndEditing:(UITextView *)textView{
    self.navigation.rightBarButtonItem = nil;

}
-(void)textViewDidBegingEditing:(UITextView *)textView{
    self.navigation.rightBarButtonItem = done;
}
-(void) finishEdit
{
    [self.textview resignFirstResponder];
}

@end
