//
//  ViewController.m
//  Acticity控件
//
//  Created by lwb on 16/4/19.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *mytimer;
}
- (IBAction)startmove:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myactivityindicatorview;
@property (weak, nonatomic) IBOutlet UIProgressView *myprogressView;
- (IBAction)dowload:(id)sender;
@property(nonatomic,strong) NSTimer *mytimer;
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

- (IBAction)startmove:(id)sender {
    if ([self.myactivityindicatorview isAnimating]) {
        [self.myactivityindicatorview stopAnimating];
    }else{
        [self.myactivityindicatorview startAnimating];
    }
}
- (IBAction)dowload:(id)sender {
    mytimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(download) userInfo:nil repeats:YES];
}
-(void)download{
    self.myprogressView.progress=self.myprogressView.progress +0.1;
    if (self.myprogressView.progress ==1.0) {
        [mytimer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"download" message:@"" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    }
}
@end
