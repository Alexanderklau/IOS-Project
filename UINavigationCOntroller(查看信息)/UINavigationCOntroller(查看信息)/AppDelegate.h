//
//  AppDelegate.h
//  UINavigationCOntroller(查看信息)
//
//  Created by lwb on 16/5/11.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BookViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BookViewController *viewController;
@property (strong, nonatomic) UINavigationController *naviCOntroller;


@end

