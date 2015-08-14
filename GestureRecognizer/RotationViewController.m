//
//  RotationViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

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
    
    imageview.center=self.view.center;
    
    imageview.userInteractionEnabled=YES;
    [self.view addSubview:imageview];
    [imageview release];
    
    UIRotationGestureRecognizer *rgr=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotation:)];
    
    [imageview addGestureRecognizer:rgr];
    [rgr release];
}

-(void)rotation:(UIRotationGestureRecognizer*)rgr
{
    static CGFloat roatation=0;
    
    rgr.view.transform=CGAffineTransformMakeRotation(rgr.rotation+roatation);
    if(rgr.state==UIGestureRecognizerStateEnded)
    {
        //在第一次旋转结束，记录下当前的角度的偏移
        //第二次旋转结束rotation累加
        roatation=rgr.rotation;
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
