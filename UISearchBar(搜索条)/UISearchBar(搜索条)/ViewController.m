//
//  ViewController.m
//  UISearchBar(搜索条)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *tableData;
NSArray *serachData;
bool isSearch;

- (void)viewDidLoad {
    [super viewDidLoad];
    isSearch = NO;
    tableData = [NSArray arrayWithObjects:@"science",@"IOSbook",@"XMLBook",@"JavaBook",@"Object-C",@"JaveStudy",@"IOSStudy", @"XMLStudy",nil];
    self.tableview .delegate = self;
    self.tableview.dataSource = self;
    self.search.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (isSearch) {
        return  serachData.count;
    }
    else
    {
        return tableData.count;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    NSInteger rowNo = indexPath.row;
    if (isSearch) {
        cell.textLabel.text = [serachData objectAtIndex:rowNo];
    }
    else
    {
        cell.textLabel.text = [tableData objectAtIndex:rowNo];
    }
    return cell;
}
-(void) searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self filterBySubstring:searchBar.text];
    [searchBar resignFirstResponder];
}
-(void) filterBySubstring:(NSString*) subStr
{
    isSearch = YES;
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] %@",subStr];
    serachData = [tableData filteredArrayUsingPredicate:pred];
    [self.tableview reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
