//
//  DoubleViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "DoubleViewController.h"

@interface DoubleViewController ()

@end

@implementation DoubleViewController

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
    
    //添加捏合手势
    UIPinchGestureRecognizer *pgr=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
    [imageview addGestureRecognizer:pgr];
    [pgr release];
    
    UIRotationGestureRecognizer *rgr=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotation:)];
    rgr.delegate=self;
    [imageview addGestureRecognizer:rgr];
    [rgr release];
}

-(void)pinch:(UIPinchGestureRecognizer*)pgr
{
    if(pgr.state==UIGestureRecognizerStateBegan||pgr.state==UIGestureRecognizerStateChanged)
    {
        pgr.view.transform=CGAffineTransformScale(pgr.view.transform, pgr.scale, pgr.scale);
        //重置
        [pgr setScale:1];
    }
}
-(void)rotation:(UIRotationGestureRecognizer*)rgr
{
    if(rgr.state==UIGestureRecognizerStateBegan||rgr.state==UIGestureRecognizerStateChanged)
    {
        rgr.view.transform=CGAffineTransformRotate(rgr.view.transform,rgr.rotation);
        [rgr setRotation:0];
    }
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
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
