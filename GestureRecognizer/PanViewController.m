//
//  PanViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

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
    
    UIPanGestureRecognizer *pgr=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panClick:)];
    
    [imageview addGestureRecognizer:pgr];
    
    [pgr release];
}

-(void)panClick:(UIPanGestureRecognizer*)pan
{
    NSLog(@"图片滑动");
    CGPoint point=[pan translationInView:self.view];
    
    static CGPoint center;
    
    if(pan.state==UIGestureRecognizerStateBegan)
    {
        center=pan.view.center;
    }
    pan.view.center=CGPointMake(point.x+center.x, point.y+center.y);
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
