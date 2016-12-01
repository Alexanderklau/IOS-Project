//
//  ViewController.m
//  捏合手势缩放图片
//
//  Created by lwb on 16/5/19.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+FKCategory.h"

@interface ViewController ()

@end

@implementation ViewController
UIImage *srcImage;
CGFloat currentScale;

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    srcImage = [UIImage imageNamed:@"seashore.png"];
    self.view.contentMode = UIViewContentModeCenter;
    self.imageview.image = srcImage;
    currentScale = 1;
    self.imageview.userInteractionEnabled = YES;
    self.imageview.multipleTouchEnabled = YES;
    UIPinchGestureRecognizer *gesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(scaleImage:)];
    [self.imageview addGestureRecognizer:gesture];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)scaleImage:(UIPinchGestureRecognizer *)gesture
{
    CGFloat scale = gesture.scale;
    if (gesture.state == UIGestureRecognizerStateBegan) {
        currentScale = self.imageview.image.size.width / srcImage.size.width;
    }
    CGSize targetSize = CGSizeMake(srcImage.size.width * scale * currentScale, srcImage.size.height * scale * currentScale);
    self.imageview.image = [srcImage imageByScalingToSize:targetSize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
