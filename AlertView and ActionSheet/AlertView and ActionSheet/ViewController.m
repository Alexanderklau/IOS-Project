//
//  ViewController.m
//  AlertView and ActionSheet
//
//  Created by lwb on 16/4/19.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>



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


- (IBAction)testActionSheet:(id)sender {
    UIAlertAction *actionSheet = [[UIActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"破坏性按钮" otherButtonTitles:@"Facebook",@"新浪微博",nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleAutomatic;
    []
    
                    
    
}
- (IBAction)testAlertView:(id)sender {
    UIAlertView *alerView = [[UIAlertView alloc]initWithTitle:@"警告" message:@"不保存就退出？" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
    [alerView show];
}
#pragma mark - 实现UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"buttonIndex = %i",buttonIndex);
}

@end
