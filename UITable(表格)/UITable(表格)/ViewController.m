//
//  ViewController.m
//  UITable(表格)
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize books;
@synthesize details;

- (void)viewDidLoad {
    [super viewDidLoad];
    books = [NSArray arrayWithObjects:@"这是教程",@"这是讲义",@"这是书籍",@"这是视屏",nil];
    details = [NSArray arrayWithObjects:@"我在做教程",@"我真的在做教程",@"我真的真的在做教程",@"我真的真的真的在做教程",nil];
    // Do any additional setup after loading the view, typically from a nib.
    self.table.dataSource = self;
    self.table.tableHeaderView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tableheader.png"]];
    self.table.tableFooterView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"tableheader.png"]];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        switch (indexPath.row % 4) {
            case 0:
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
                break;
            case 1:
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
                break;
            case 2:
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellId];
                break;
            case 3:
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellId];
                break;
                
        }
    }
    cell.layer.cornerRadius = 12;
    cell.layer.masksToBounds = YES;
    NSUInteger rowNo = indexPath.row;
    cell.textLabel.text = [books objectAtIndex:rowNo];
    cell.imageView.image = [UIImage imageNamed:@"ic_gray.png"];
    cell.imageView.highlightedImage = [UIImage imageNamed:@"ic_highlight.png"];
    cell.detailTextLabel.text = [details objectAtIndex:rowNo];
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return books.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
