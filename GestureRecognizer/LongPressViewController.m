//
//  LongPressViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "LongPressViewController.h"

@interface LongPressViewController ()

@end

@implementation LongPressViewController

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
    UILongPressGestureRecognizer *longPress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressClick:)];
    
    longPress.numberOfTouchesRequired=1;
    longPress.minimumPressDuration=2;
  //  longPress.numberOfTapsRequired=1;
    imageview.userInteractionEnabled=YES;

    
    [imageview addGestureRecognizer:longPress];
    [longPress release];
    [self.view addSubview:imageview];
    [imageview release];
    
    
}
static int i=1;
-(void)longPressClick:(UILongPressGestureRecognizer*)longpress
{
    if (longpress.state==UIGestureRecognizerStateBegan) {
        NSLog(@"图片被长按了%d次",i++);
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
