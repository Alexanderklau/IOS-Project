//
//  ViewController.m
//  UITable(XIB定制表行)
//
//  Created by lwb on 16/5/9.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import "BOOKTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController
NSArray *books;
NSArray *prices;


- (void)viewDidLoad {
    [super viewDidLoad];
    books = [NSArray arrayWithObjects:@"语文",@"数学",@"英语",@"政治", nil];
    prices = [NSArray arrayWithObjects:@"99",@"78",@"56",@"34",nil];
    self.table.dataSource = self;
    self.table.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    static BOOL isRegist = NO;
    if (!isRegist) {
        UINib *nib = [UINib nibWithNibName:@"BOOKTableViewCell" bundle:nil];
        [tableView registerClass:nib forHeaderFooterViewReuseIdentifier:cellId];
        isRegist = YES;
    }
   BOOKTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    NSUInteger rowNo = indexPath.row;
    cell.layer.cornerRadius = 12;
    cell.layer.masksToBounds = YES;
    cell.name.text = [books objectAtIndex:rowNo];
    cell.orice.text = [prices objectAtIndex:rowNo];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return books.count;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    UIColor *greenColor = [UIColor colorWithRed:0.7 green:1.0 blue:0.7 alpha:1.0];
    UIColor *redColor = [UIColor colorWithRed:1.0 green:0.7 blue:0.7 alpha:1.0];
    cell.backgroundColor = indexPath.row % 2? greenColor :redColor;
    ((BOOKTableViewCell *)cell).name.backgroundColor = [UIColor clearColor];
    ((BOOKTableViewCell *)cell).name.backgroundColor = [UIColor clearColor];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
