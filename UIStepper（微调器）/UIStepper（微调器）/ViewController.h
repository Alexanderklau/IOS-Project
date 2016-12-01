//
//  ViewController.h
//  UIStepper（微调器）
//
//  Created by lwb on 16/5/7.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tf1;
@property (weak, nonatomic) IBOutlet UITextField *tf2;
@property (weak, nonatomic) IBOutlet UITextField *tf3;
@property (weak, nonatomic) IBOutlet UIStepper *stepr;
- (IBAction)backup:(id)sender;

-(IBAction)value:(UIStepper *)sender;



@end

