//
//  AppDelegate.h
//  菜单的切换
//
//  Created by varVery on 15/5/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLNavigationControllerDelegate.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    CLNavigationControllerDelegate * delegate;
}
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) UINavigationController * mNavCtrl;
@property (assign,nonatomic) CGPoint mTouchPoint;
@property (strong,nonatomic) UIView * mTouchView;

@end

