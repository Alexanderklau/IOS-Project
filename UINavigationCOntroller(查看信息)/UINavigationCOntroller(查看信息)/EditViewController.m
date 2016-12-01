//
//  EditViewController.m
//  UINavigationCOntroller(查看信息)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "EditViewController.h"
#import "BookViewController.h"
#import "AppDelegate.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)viewWillAppear:(BOOL)animated
{
    self.nameField.text = self.name;
    self.detailField.text = self.detail;
    self.nameField.enabled = NO;
    self.detailField.editable = NO;
    self.detailField.layer.borderWidth = 1.5;
    self.detailField.layer.borderColor = [[UIColor grayColor]CGColor];
    UIBarButtonItem *rightBn = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStyleBordered target:self action:@selector(beginEdit:)];
    self.navigationItem.rightBarButtonItem = rightBn;
    
}
- (void)beginEdit:(id) sender
{
    if ([[sender title] isEqualToString:@"编辑"]) {
        self.nameField.enabled = YES;
        self.detailField.editable = YES;
        self.navigationItem.rightBarButtonItem.title = @"完毕";
    }
    else
    {
        [self.nameField resignFirstResponder];
        [self.detailField resignFirstResponder];
        AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
        [appDelegate.viewController.books replaceObjectAtIndex:self.rowNo withObject:self.nameField.text];
        [appDelegate.viewController.details replaceObjectAtIndex:self.rowNo withObject:self.detailField.text];
        self.nameField.enabled = NO;
        self.detailField.editable = NO;
        self.navigationItem.rightBarButtonItem.title = @"编辑";
        
        
    }
}

- (IBAction)finish:(id)sender {
    [sender resignFirstResponder];
}
@end
