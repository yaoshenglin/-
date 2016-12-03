//
//  ViewController.m
//  菜单的切换
//
//  Created by varVery on 15/5/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import "ViewController.h"
#import "CLSecondViewController.h"
#import "AppDelegate.h"
#import "RootViewController.h"

@interface ViewController ()
{
    NSInteger currentTag;
    CGPoint orginPoint;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"系统动画";
    NSArray * arrayImage = @[@"ff_IconFacebook@2x",@"ff_IconLocationService@2x",@"ff_IconShowFaceBook@2x",@"ff_IconShowMobile@2x"];
    self.view.backgroundColor = [UIColor redColor];
    int flag = 100;
    for ( int i = 0; i<2; i++) {
        for (int j = 0; j<2; j++) {
            static  int k = 0;
            UIView * view = [[UIView alloc]initWithFrame:CGRectMake(i* 90+ 80,j* 90+ 200, 80, 80)];
            view.backgroundColor = [UIColor greenColor];
            UITapGestureRecognizer * singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOneClick:)];
            view.userInteractionEnabled = YES;
            
            view.tag = flag ++;
            //view.clipsToBounds = YES;
            view.autoresizesSubviews = YES;
            [view addGestureRecognizer:singleTap];
            [self.view addSubview:view];
            
            
//            UILabel * title = [[UILabel alloc]initWithFrame:CGRectMake(15, 15, 50, 50)];
//            title.backgroundColor = [UIColor clearColor];
//            title.textColor = [UIColor blackColor];
//            //title.text = [array objectAtIndex:k++];
//            title.textAlignment = NSTextAlignmentCenter;
//            title.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth |  UIViewAutoresizingFlexibleLeftMargin |UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
//            [view addSubview:title];
            
            UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 50, 50)];
            imageView.image =[UIImage imageNamed:[arrayImage objectAtIndex:k++]];
            imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth |  UIViewAutoresizingFlexibleLeftMargin |UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
            [view addSubview:imageView];
        }
    }
}

-(void)tapOneClick:(UITapGestureRecognizer *)gesture
{
    NSLog(@"tag is %ld",(long)gesture.view.tag);
    currentTag = gesture.view.tag;
    orginPoint = gesture.view.frame.origin;
    self.mPoint = gesture.view.center;
    
    UIApplication * app = [UIApplication sharedApplication];
    AppDelegate * appDel = app.delegate;
    appDel.mTouchPoint = orginPoint;
    appDel.mTouchView = gesture.view;
    [UIView animateWithDuration:0.35 animations:^{
        //appDel.mTouchView.frame = self.view.bounds;
    } completion:^(BOOL finished) {
    }];
    if (gesture.view.tag == 100) {
        CLSecondViewController * sendView = [[CLSecondViewController alloc]init];
        sendView.mPoint = self.mPoint;
        //sendView.view.frame = CGRectZero;
        [self.navigationController pushViewController:sendView animated:YES];
    }else if (gesture.view.tag ==101) {
        RootViewController * root = [[RootViewController alloc]init];
        root.mPoint = self.mPoint;
        //sendView.view.frame = CGRectZero;
        [self.navigationController pushViewController:root animated:YES];

    }else if (gesture.view.tag == 102) {
        CLSecondViewController * sendView = [[CLSecondViewController alloc]init];
        sendView.mPoint = self.mPoint;
        //sendView.view.frame = CGRectZero;
        [self.navigationController pushViewController:sendView animated:YES];
    }else if (gesture.view.tag ==103) {
        RootViewController * root = [[RootViewController alloc]init];
        root.mPoint = self.mPoint;
        //sendView.view.frame = CGRectZero;
        [self.navigationController pushViewController:root animated:YES];
        
    }

    
}
- (void)viewDidDisappear:(BOOL)animated
{
    //    [UIView animateWithDuration:1 animations:^{
    //
    //        UIView * view = [self.view viewWithTag:currentTag];
    //        view.frame =  CGRectMake(orginPoint.x, orginPoint.y, 80, 80);
    //    }];
    
}
-(void)buttonClick:(id)sender{
    
    CLSecondViewController * secondView = [[CLSecondViewController alloc]init];
    [self.navigationController pushViewController:secondView animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
