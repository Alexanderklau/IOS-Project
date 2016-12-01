//
//  ViewController.h
//  UITable(表格)
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *table;
@property(strong,nonatomic) NSArray *books;
@property(strong,nonatomic) NSArray *details;



@end

