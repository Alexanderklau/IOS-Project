//
//  ViewController.m
//  System Sound Services短播放
//
//  Created by lwb on 16/5/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
static void completionCallback(SystemSoundID mySSID)
{
    AudioServicesPlaySystemSound(mySSID);
}

@interface ViewController ()

@end

@implementation ViewController
SystemSoundID crash;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *crashUrl = [[NSBundle mainBundle]URLForResource:@"crash" withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)crashUrl, &crash);
    AudioServicesAddSystemSoundCompletion(crash, NULL, NULL, (void *)completionCallback, NULL);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    AudioServicesPlayAlertSound(crash);
}
@end
