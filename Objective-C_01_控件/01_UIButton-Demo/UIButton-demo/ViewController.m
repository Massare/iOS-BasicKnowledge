//
//  ViewController.m
//  UIButton-demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.创建按钮实例
    //如果使用alloc init方法创建按钮等价于指定为custom样式
    //UIButton *button = [[UIButton alloc]init];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    // 2.设置frame
    button.frame = CGRectMake(50, 150, 100, 40);
    // 3.设置内容
    // 摆着不动是normal状态,显示OK
    [button setTitle:@"Normal" forState:UIControlStateNormal];
    // 按下去不松手对应的是HighLighted状态，显示KO
    [button setTitle:@"Lighted" forState:UIControlStateHighlighted];
    
    // 4.设置背景图
    // UIImage作用就是存图片
    UIImage *bgImage = [UIImage imageNamed:@"bg.png"];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    
    // 5.设置按钮上的图片
    [button setImage:[UIImage imageNamed:@"sun"] forState:UIControlStateNormal];
    
    button.backgroundColor = [UIColor lightGrayColor];
    
    // 6.为按钮添加事件响应
    // 跟系统预定，如果检测到了button的touchUpInside事件
    // 则给target对象，发action这个消息
    // 即调用target对象的 action 方法
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    
    // 7.添加按钮到控制器的view中
    [self.view addSubview:button];
    self.view.backgroundColor = [UIColor whiteColor];

}

- (void)clickButton {
    NSLog(@"点击了按钮");
}

@end
