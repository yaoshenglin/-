//
//  ViewController.h
//  菜单的切换
//
//  Created by varVery on 15/5/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLNavigationControllerDelegate.h"

@interface ViewController : UIViewController
{
    CLNavigationControllerDelegate * delegate;
}

@property (assign,nonatomic) CGPoint mPoint;

@end

