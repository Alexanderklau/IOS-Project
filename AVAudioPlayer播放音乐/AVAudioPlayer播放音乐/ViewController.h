//
//  ViewController.h
//  AVAudioPlayer播放音乐
//
//  Created by lwb on 16/5/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVAudioPlayerDelegate>
- (IBAction)play:(id)sender;
- (IBAction)stop:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *bn1;
@property (weak, nonatomic) IBOutlet UIButton *bn2;
@property (weak, nonatomic) IBOutlet UIProgressView *prog;
@property (weak, nonatomic) IBOutlet UILabel *show;

@end

