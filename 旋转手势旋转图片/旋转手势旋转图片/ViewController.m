//
//  ViewController.m
//  旋转手势旋转图片
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
CGFloat currentRotation;

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    srcImage = [UIImage imageNamed:@"seashore.png"];
    self.view.contentMode =UIViewContentModeCenter;
    self.imageview.image = srcImage;
    currentScale = 1;
    currentRotation = 0;
    self.imageview.userInteractionEnabled = YES;
    self.imageview.multipleTouchEnabled = YES;
    UIPinchGestureRecognizer *gesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(scaleImage:)];
    [self.imageview addGestureRecognizer:gesture];
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotateImage:)];
    [self.imageview addGestureRecognizer:rotateGesture];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void) scaleImage:(UIPinchGestureRecognizer *)gesture
{
    CGFloat scale = gesture.scale;
    CGSize targetSize = CGSizeMake(srcImage.size.width * scale * currentScale, srcImage.size.height * scale * currentScale);
    self.imageview.image = [[srcImage imageByScalingToSize:targetSize]imageRotatedByRadians:currentRotation];
    if (gesture.state == UIGestureRecognizerStateEnded) {
        currentScale = scale * currentScale;
    }
    
}
- (void) rotateImage:(UIRotationGestureRecognizer *)gesture
{
    CGFloat rotation = gesture.rotation;
    CGSize targetSize = CGSizeMake(srcImage.size.width * currentScale,srcImage.size.height * currentScale);
    self.imageview.image = [[srcImage imageByScalingToSize:targetSize]imageRotatedByRadians:currentRotation + rotation];
    if (gesture.state == UIGestureRecognizerStateEnded) {
        currentRotation = currentRotation + rotation;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
