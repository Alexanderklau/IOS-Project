//
//  ViewController.m
//  UINavigationBar(导航条)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSInteger count;
UINavigationBar *navigationBar;


- (void)viewDidLoad {
    [super viewDidLoad];
    count = 1;
    navigationBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, 320, 44)];
    [self.view addSubview:navigationBar];
    [self push];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)push
{
    [navigationBar pushNavigationItem:[self makeNavItem] animated:YES];
    count++;
}
- (void)pop
{
    if (count > 2) {
        count -- ;
        [navigationBar popNavigationItemAnimated:YES];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"只剩下最后一个导航，在出就没有了！" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

- (UINavigationItem *)makeNavItem
{
    UINavigationItem *navgationItem = [[UINavigationItem alloc]initWithTitle:nil];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(push)];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(pop)];
    navgationItem.title = [NSString stringWithFormat:@"第 %ld 个导航项",count];
    [navgationItem setLeftBarButtonItem:leftButton];
    [navgationItem setRightBarButtonItem:rightButton];
    return navgationItem;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
