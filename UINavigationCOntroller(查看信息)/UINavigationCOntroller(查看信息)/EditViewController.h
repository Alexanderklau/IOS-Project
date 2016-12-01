//
//  EditViewController.h
//  UINavigationCOntroller(查看信息)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditViewController : UIViewController
@property (strong,nonatomic) IBOutlet UITextField *nameField;
@property (strong,nonatomic) IBOutlet UITextView *detailField;
- (IBAction)finish:(id)sender;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *detail;
@property (nonatomic,assign) NSInteger rowNo;






@end
