//
//  ViewController.m
//  UItableView（编辑表格）
//
//  Created by lwb on 16/5/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSMutableArray *list;
NSUInteger action;

- (void)viewDidLoad {
    [super viewDidLoad];
    list = [[NSMutableArray alloc]initWithObjects:@"孙悟空",@"牛魔王",@"蜘蛛精",@"红孩儿",@"猪八戒",@"白骨精",nil];
    action = 0;
    self.table.delegate = self;
    self.table.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [list count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
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
- (UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return action == 0 ? UITableViewCellEditingStyleDelete:UITableViewCellEditingStyleInsert;
}
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return @"确认删除";
}
- (BOOL) tableView:(UITableView *)tableView canEditRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if ([[list objectAtIndex:[indexPath row]] isEqualToString:@"孙悟空"])
    {
        return  NO;
    }
    if (indexPath.row == 1) {
        return NO;
    }
    return YES;
}
- (void) tableView:(UITableView *)tableView moveRowAtIndexPath:(nonnull NSIndexPath *)sourceIndexPath toIndexPath:(nonnull NSIndexPath *)destinationIndexPath
{
    NSInteger sourceRowNo = [sourceIndexPath row];
    NSInteger destRowNo = [destinationIndexPath row];
    id targetObj = [list objectAtIndex:sourceRowNo];
    [list removeObjectAtIndex:sourceRowNo];
    [list insertObject:targetObj atIndex:destRowNo];
    
}
- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSInteger rowNo = [indexPath row];
        [list removeObjectAtIndex:rowNo];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
- (IBAction)action:(id)sender
{
    if ([[sender title] isEqualToString:@"删除"]) {
        action = 0;
    }
    else
    {
        action = 1;
    }
    [self.table setEditing: !self.table.editing animated:YES];
    if (self.table.editing) {
        self.add.title = @"完成";
        self.delet.title = @"完成";
    }
    else
    {
        self.add.title = @"添加";
        self.delet.title = @"删除";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
