//
//  BookViewController.m
//  UINavigationCOntroller(查看信息)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "BookViewController.h"
#import "EditViewController.h"

@interface BookViewController ()

@end

@implementation BookViewController
@synthesize books;
@synthesize details;

- (void)viewDidLoad {
    [super viewDidLoad];
    books = [NSMutableArray arrayWithObjects:@"English",@"Chinese",@"Object",@"France",nil];
    details = [NSMutableArray arrayWithObjects:@"Nice Book!",@"Good Job!",@"Gerat lucky",@"Amazing book!" ,nil];
    self.navigationItem.title = @"图书列表";
    // Do any additional setup after loading the view.
}
- (void) viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    NSUInteger rowNo = indexPath.row;
    cell.textLabel.text = [books objectAtIndex:rowNo];
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    //cell.accessoryType = UITableViewCellAccessoryCheckmark;
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.detailTextLabel.text = [details objectAtIndex:rowNo];
    return cell;
}
- (NSUInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return books.count;
}
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowNo = indexPath.row;
    EditViewController *editController = [[EditViewController alloc]init];
    editController.name = [books objectAtIndex:rowNo];
    editController.detail = [details objectAtIndex:rowNo];
    editController.rowNo = rowNo;
    [self.navigationController pushViewController: editController animated:YES];
    
    
    
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

@end
