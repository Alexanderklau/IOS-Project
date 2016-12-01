//
//  ViewController.m
//  simpleTable
//
//  Created by lwb on 16/4/21.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property(nonatomic,strong) NSArray *listTeams;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistpath = [bundle pathForResource:@"team" ofType:@"plist"];
    self.listTeams = [[NSArray alloc]initWithContentsOfFile:plistpath];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.listTeams count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSUInteger row = [indexPath row];
    NSDictionary *rowDict = [self.listTeams objectAtIndex:row];
    cell.textLabel.text = [rowDict objectForKey:@"name"];
    NSString *imagepath = [rowDict objectForKey:@"image"];
    imagepath = [imagepath stringByAppendingString:imagepath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    
    
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
