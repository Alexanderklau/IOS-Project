//
//  ViewController.m
//  UITableView(直接使用UITableView
//
//  Created by lwb on 16/5/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSDictionary *tableData;
NSArray *stories;


- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSDictionary dictionaryWithObjectsAndKeys:
                 [NSArray arrayWithObjects:@"孙悟空",@"猪八戒",@"沙和尚",@"唐僧",@"蜘蛛精",nil],@"西游记",
                 [NSArray arrayWithObjects:@"宝玉",@"黛玉",@"刘姥姥",@"元春",@"元芳",nil],@"红楼梦",
                 [NSArray arrayWithObjects:@"宋江",@"无用",@"林冲",@"杨志",@"鲁提辖" ,nil],@"水浒传",
                 [NSArray arrayWithObjects:@"关羽",@"刘备",@"张飞",@"曹操",@"孙权", nil],@"三国演义",nil];
    stories = [[tableData allKeys]sortedArrayUsingSelector:@selector(compare:)];
    self.tableView.tableHeaderView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tableheader.png"]];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return stories.count;
}
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *story = [stories objectAtIndex:section];
    return [[tableData objectForKey:story]count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger sectionNo = indexPath.section;
    NSUInteger rowNo = indexPath.row;
    NSString *story = [stories objectAtIndex:sectionNo];
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.layer.cornerRadius = 12;
    cell.layer.masksToBounds = YES;
    cell.textLabel.text = [[tableData objectForKey:story]objectAtIndex:rowNo];
    return cell;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [stories objectAtIndex:section];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
