//
//  RootViewController.m
//  GestureRecognizer
//
//  Created by qianfeng001 on 15/7/2.
//  Copyright (c) 2015年 GC. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //数组里装着视图控制器类的名字
    NSArray * array = @[@"Touch", @"Tap", @"LongPress", @"Swipe", @"Pan", @"Rotation", @"Pich", @"Double",
                        @"Shake"];
    
    for(int i=0;i<array.count;i++)
    {
        UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(10, 70+i*50, self.view.frame.size.width-20, 45)];
        [btn setTitle:[array objectAtIndex:i] forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor orangeColor]];
        
        [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
        [btn release];
    }
}

-(void)onClick:(UIButton*)button
{
    //获取类名
    NSString *className=[NSString stringWithFormat:@"%@ViewController",button.titleLabel.text];
    
    //创建class类名
    Class vcClass=NSClassFromString(className);
    UIViewController *vc=[[vcClass alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    [vc release];
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

@end
