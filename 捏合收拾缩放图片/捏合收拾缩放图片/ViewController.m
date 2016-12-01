//
//  ViewController.m
//  捏合收拾缩放图片
//
//  Created by lwb on 16/5/8.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+FKCategory.h"

@interface ViewController ()

@end

@implementation ViewController
UIImage *srcImage;
CGFloat currenSacle;

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    srcImage = [UIImage imageNamed:@"rain.jpg"];
    self.view.contentMode = UIViewContentModeCenter;
    self.imageview.image = srcImage;
    currenSacle = 1;
    self.imageview.userInteractionEnabled = YES;
    self.imageview.multipleTouchEnabled = YES;
    UIPinchGestureRecognizer *gesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(scaleImage:)];
    [self.imageview addGestureRecognizer:gesture];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)scaleImage:(UIPinchGestureRecognizer *)gesture
{
    CGFloat scale = gesture.scale;
    if (gesture.state == UIGestureRecognizerStateBegan) {
        currenSacle = self.imageview.image.size.width/srcImage.size.width;
    }
    CGSize targetSize = CGSizeMake(srcImage.size.width * scale * currenSacle, srcImage.size.height * scale * currenSacle);
    self.imageview.image = [srcImage imageByScalingAspectToMaxSize:targetSize];
  
    
}

@end
