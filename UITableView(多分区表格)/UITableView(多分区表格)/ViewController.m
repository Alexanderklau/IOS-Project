//
//  ViewController.m
//  UITableView(多分区表格)
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
                 [NSArray arrayWithObjects:@"孙悟空",@"猪八戒",@"牛魔王",@"蜘蛛精",@"唐僧",@"沙和尚", nil],@"西游记",
                 [NSArray arrayWithObjects:@"探春",@"宝玉",@"黛玉",@"元春",@"客卿",@"刘姥姥",nil],@"红楼梦",
                 [NSArray arrayWithObjects:@"杨志",@"武松",@"宋江",@"陆大",@"九文龙",@"无用",nil],@"水浒传",
                 [NSArray arrayWithObjects:@"张飞",@"关羽",@"刘备",@"曹操",@"孙权",@"马超",nil],@"三国演义",nil];
    stories = [[tableData allKeys]sortedArrayUsingSelector:@selector(compare:)];
    self.table.dataSource = self;
    self.table.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger) numberofSectionsInTableView:(UITableView *)tableView
{
    return stories.count;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *story = [stories objectAtIndex:section];
    return [[tableData objectForKey:story]count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
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
    cell.textLabel.text = [[tableData objectForKey:story] objectAtIndex:rowNo];
    return cell;
    
}
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return stories;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [stories objectAtIndex:section];
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSString *story = [stories objectAtIndex:section];
    return [NSString stringWithFormat:@"一共有 %d 个人物",[[tableData objectForKey:story] count]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
