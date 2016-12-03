//
//  CLPopAnimator.m
//  NavigationTrasionViewController
//
//  Created by Charles Leo  on 14-6-25.
//  Copyright (c) 2014年 Grace Leo. All rights reserved.
//

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com

#import "CLPopAnimator.h"
#import "AppDelegate.h"
@implementation CLPopAnimator
-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.45;
}
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    NSLog(@"Hello2");
    UIViewController* toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController* fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    [[transitionContext containerView] addSubview:toViewController.view];
    toViewController.view.alpha = 0;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        //fromViewController.view.transform = CGAffineTransformMakeScale(0, 0);
        toViewController.view.transform = CGAffineTransformMakeScale(1, 1);
        toViewController.view.alpha = 1;
        UIApplication * app = [UIApplication sharedApplication];
        AppDelegate * appDel = app.delegate;
        appDel.mTouchView.frame = CGRectMake(appDel.mTouchPoint.x, appDel.mTouchPoint.y, 80, 80);
    } completion:^(BOOL finished) {
        fromViewController.view.transform = CGAffineTransformIdentity;
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        
    }];
}

@end
