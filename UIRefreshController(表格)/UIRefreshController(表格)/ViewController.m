//
//  ViewController.m
//  UIRefreshController(表格)
//
//  Created by lwb on 16/5/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController
NSMutableArray *list;

- (void)viewDidLoad {
    [super viewDidLoad];
    list = [[NSMutableArray alloc]initWithObjects:@"孙悟空",@"猪八戒",@"牛魔王",@"白骨精",@"唐僧",@"狐狸精",nil];
    self.refreshControl = [[UIRefreshControl alloc]init];
    self.refreshControl.tintColor = [UIColor grayColor];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"下拉刷新"];
    [self.refreshControl addTarget:self action:@selector(refreshControl) forControlEvents:UIControlEventEditingChanged];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count];
}
- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *myId = @"moveCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myId];
    }
    NSInteger rowNo = [indexPath row];
    cell.textLabel.text = [list objectAtIndex:rowNo];
    return cell;
}
- (void) refreshData
{
    [self performSelector:@selector(handleData) withObject:nil afterDelay:2];
}
- (void) handleData
{
    NSString *randStr = [NSString stringWithFormat:@"%d",arc4random() % 10000];
    [list addObject:randStr];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc]initWithString:@"正在刷新"];
    [self.refreshControl endRefreshing];
    [self.tableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
