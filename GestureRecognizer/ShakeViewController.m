//
//  ShakeViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "ShakeViewController.h"

#import "UIView+Animaition.h"

@interface ShakeViewController ()

@end

@implementation ShakeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createImageView
{
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    NSString *str=[[NSBundle mainBundle] pathForResource:@"10_7" ofType:@"jpg"];
    NSData *data=[NSData dataWithContentsOfFile:str];
    
    imageView.image=[UIImage imageWithData:data];
    
    // imageView.image = [UIImage imageNamed:@"10_3.jpg"];
    
    //启动动画
    [imageView shakeWithRaid:0.5 duration:0.5 repeatCount:0];
    //停止
    //    [imageView stopShake];
    
    [self.view addSubview:imageView];
    
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
