//
//  ViewController.m
//  05UIView层级关系
//
//  Created by lingdian on 17/9/5.
//  Copyright © 2017年 lingdian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view01=[[UIView alloc]init];
    view01.frame=CGRectMake(100, 100, 150, 150);
    [view01 setBackgroundColor:[UIColor blueColor]];
    
    
    UIView* view02=[[UIView alloc]init];
    view02.frame=CGRectMake(125, 125, 150, 150);
    [view02 setBackgroundColor:[UIColor orangeColor]];
    
    UIView* view03=[[UIView alloc]init];
    view03.frame=CGRectMake(150, 150, 150, 150);
    [view03 setBackgroundColor:[UIColor greenColor]];
    //view 的绘图顺序 与添加view的顺序有关  先添加的先画 后画的 可能会覆盖挡住之前的
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    //通过这个函数 可以把view添加到最前面 改变 绘画的顺序
    [self.view bringSubviewToFront:view01];
    //可以把view移动到最下面一层
    [self.view sendSubviewToBack:view03];
    
    //self.view.subviews 是父iew 管理所有子试图的数组 每次添加一个视图的时候 都会放入这个数组
    UIView* fontView=self.view.subviews[2];//最前面的视图 是最后一个添加的
    UIView* backView=self.view.subviews[0];//最后面的视图 是第一个添加的
    
    //每一个view 都有一个superview 都有一个父view
    UIView* superView=self.view.subviews;
    //从父视图中 移除自己
    [view01 removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
 
}

@end
