//
//  ViewController.h
//  UISearchBar(搜索条)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource
, UITableViewDelegate ,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *search;
@property (weak, nonatomic) IBOutlet UITableView *tableview;


@end

