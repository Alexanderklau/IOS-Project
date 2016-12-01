//
//  ViewController.m
//  UIControl控件
//
//  Created by lwb on 16/4/19.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *leftswitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightswitch;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)touchdown:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)SwitchChange:(id)sender//控制开关控件
{
    UISwitch *witchswitch = (UISwitch *)sender;
    BOOL setting = witchswitch.isOn;
    [self.leftswitch setOn:setting animated:YES];
    [self.rightswitch setOn:setting animated:YES];
    
}
-(IBAction)SliderChange:(id)sender//滑块控制label显示数值
{
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)(slider.value);
    NSString *newtext = [[NSString alloc]initWithFormat:@"%d",progressAsInt];
    self.label.text = newtext;
    
}

- (IBAction)touchdown:(id)sender//分段控件控制switch开关的显示
{
    if(self.leftswitch.hidden == YES)
    {
        self.rightswitch.hidden = NO;
        self.leftswitch.hidden = NO;
    }else
    {
        self.leftswitch.hidden = YES;
        self.rightswitch.hidden = YES;
        
    }
}
@end
