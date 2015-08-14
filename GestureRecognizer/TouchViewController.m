//
//  TouchViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "TouchViewController.h"

@interface TouchViewController ()

@end

@implementation TouchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    TouchView *view=[[TouchView alloc]initWithFrame:CGRectMake(50, 100, 200, 200)];
    [self.view addSubview:view];
    [view release];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"开始触摸");
#if 0
    //单定触摸
    UITouch *touch=[touches anyObject];

    CGPoint point=[touch locationInView:self.view];
    NSLog(@"%@",NSStringFromCGPoint(point));
#else
    //多点触摸      有问题未实现
    NSSet *touchesSet=[event allTouches];
    
    for(UITouch *touch in touchesSet)
    {
        CGPoint point=[touch locationInView:self.view];
        
        NSLog(@"%@",NSStringFromCGPoint(point));
    }
#endif
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"触摸结束");
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"触摸移动");
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"来电终端");
}

@end









