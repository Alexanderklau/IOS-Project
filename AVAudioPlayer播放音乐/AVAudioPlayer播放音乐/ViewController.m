//
//  ViewController.m
//  AVAudioPlayer播放音乐
//
//  Created by lwb on 16/5/25.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController
AVAudioPlayer *audioPlayer;
UIImage *playImage;
UIImage *stopImage;
UIImage *pauseImage;
CGFloat durationTime;
NSTimer *timer;
- (void)viewDidLoad {
    [super viewDidLoad];
    playImage = [UIImage imageNamed:@"play.png"];
    pauseImage = [UIImage imageNamed:@"pause.png"];
    stopImage = [UIImage imageNamed:@"stop.png"];
    [self.bn1 setImage:playImage forState:UIControlStateNormal];
    [self.bn2 setImage:stopImage forState:UIControlStateNormal];
    NSURL *fileURL = [[NSBundle mainBundle]URLForResource:@"star" withExtension:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:fileURL error:nil];
    NSString *msg = [NSString stringWithFormat:@"音频文件声道数 %d\n音频文件持续时间: %g",audioPlayer.numberOfChannels,audioPlayer.duration];
    self.show.text = msg;
    durationTime = audioPlayer.duration;
    audioPlayer.numberOfLoops = -1;
    audioPlayer.delegate = self;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
 - (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    if (player == audioPlayer && flag) {
        NSLog(@"播放完成!!");
        [self.bn1 setImage:playImage forState:UIControlStateNormal];
    }
}
 - (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    if (player == audioPlayer) {
        NSLog(@"请中断!!");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    if (audioPlayer.playing) {
        [audioPlayer pause];
        [sender setImage:playImage forState:UIControlStateNormal];
    }
    else
    {
        [audioPlayer play];
        [sender setImage:pauseImage forState:UIControlStateNormal];
    }
    if (timer == nil) {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProg) userInfo:nil repeats:YES];
    }
    
}


- (IBAction)stop:(id)sender {
    [audioPlayer stop];
    [timer invalidate];
    timer = nil;
}
- (void) updateProg
{
    self.prog.progress = audioPlayer.currentTime / durationTime;
}
@end
