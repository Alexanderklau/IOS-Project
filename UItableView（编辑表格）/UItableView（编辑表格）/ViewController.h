//
//  ViewController.h
//  UItableView（编辑表格）
//
//  Created by lwb on 16/5/10.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *add;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *delet;
@property (weak, nonatomic) IBOutlet UITableView *table;
-(IBAction)action:(id)sender;




@end

