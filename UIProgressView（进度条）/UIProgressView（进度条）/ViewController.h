//
//  ViewController.h
//  UIProgressView（进度条）
//
//  Created by lwb on 16/5/5.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIProgressView *prog1;
@property (weak, nonatomic) IBOutlet UIProgressView *prog2;
@property (weak, nonatomic) IBOutlet UIProgressView *prog3;
- (IBAction)click:(id)sender;


@end

