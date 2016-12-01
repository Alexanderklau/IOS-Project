//
//  ViewController.m
//  UITableView（定制表格行）
//
//  Created by lwb on 16/5/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *books;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview.dataSource = self;
    books = [NSArray arrayWithObjects:@"英语",@"语文",@"数学",@"政治",nil];
   
}
-(NSInteger)taleview:(UITableView *)tableview
numberOfRowsInSection:(NSInteger)section
{
    return books.count;
}
-(UITableViewCell *)tableview:(UITableView *)tableview cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowNo = indexPath.row;
    NSString *identfier = rowNo % 2 == 0 ? @"cell1" : @"cell2";
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:identfier forIndexPath:indexPath];
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    label.text = [books objectAtIndex:rowNo];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
