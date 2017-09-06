# 05UIViewLevelRelation

UIView 的层级关系

- (void)viewDidLoad {<br/>
    [super viewDidLoad];<br/>
    UIView* view01=[[UIView alloc]init];<br/>
    view01.frame=CGRectMake(100, 100, 150, 150);<br/>
    [view01 setBackgroundColor:[UIColor blueColor]];<br/>
    
    
    UIView* view02=[[UIView alloc]init];<br/>
    view02.frame=CGRectMake(125, 125, 150, 150);<br/>
    [view02 setBackgroundColor:[UIColor orangeColor]];<br/>
    
    UIView* view03=[[UIView alloc]init];<br/>
    view03.frame=CGRectMake(150, 150, 150, 150);<br/>
    [view03 setBackgroundColor:[UIColor greenColor]];<br/>
    //view 的绘图顺序 与添加view的顺序有关  先添加的先画 后画的 可能会覆盖挡住之前的<br/>
    [self.view addSubview:view01];<br/>
    [self.view addSubview:view02];<br/>
    [self.view addSubview:view03];<br/>
    //通过这个函数 可以把view添加到最前面 改变 绘画的顺序<br/>
    [self.view bringSubviewToFront:view01];<br/>
    //可以把view移动到最下面一层<br/>
    [self.view sendSubviewToBack:view03];<br/>
    
    //self.view.subviews 是父iew 管理所有子试图的数组 每次添加一个视图的时候 都会放入这个数组<br/>
    UIView* fontView=self.view.subviews[2];//最前面的视图 是最后一个添加的<br/>
    UIView* backView=self.view.subviews[0];//最后面的视图 是第一个添加的<br/>
    
    //每一个view 都有一个superview 都有一个父view<br/>
    UIView* superView=self.view.subviews;<br/>
    //从父视图中 移除自己<br/>
    [view01 removeFromSuperview];<br/>
}
