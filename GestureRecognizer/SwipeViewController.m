//
//  SwipeViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createImageView
{
    UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    imageview.tag=1;
    imageview.image=[UIImage imageNamed:@"10_0.jpg"];
    
    imageview.userInteractionEnabled=YES;
    [self.view addSubview:imageview];
    [imageview release];
    
    //添加滑动手势
    UISwipeGestureRecognizer *leftSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    
    leftSwipe.direction=UISwipeGestureRecognizerDirectionLeft;
    [imageview addGestureRecognizer:leftSwipe];
    [leftSwipe release];
    
    
    //向右滑动
    UISwipeGestureRecognizer *rightSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    
    rightSwipe.direction=UISwipeGestureRecognizerDirectionRight;
    [imageview addGestureRecognizer:rightSwipe];
    [rightSwipe release];
}

-(void)swipe:(UISwipeGestureRecognizer*)sgr
{
    if(sgr.direction&UISwipeGestureRecognizerDirectionLeft)
    {
        NSLog(@"向左滑动了");
    }
    
    else if(sgr.direction&&UISwipeGestureRecognizerDirectionRight)
    {
        NSLog(@"向右滑动了");
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
