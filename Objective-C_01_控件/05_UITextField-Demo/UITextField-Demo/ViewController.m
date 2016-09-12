//
//  ViewController.m
//  UITextField-Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)printButton:(id)sender {
     NSLog(@"%@",self.inputTextField.text);
}

- (IBAction)closeButton:(id)sender {
    //放弃第一响应者身份
    //[self.textField resignFirstResponder];
    [self.view endEditing:YES];
}

- (IBAction)openButton:(id)sender {
    //成为第一响应者
    [self.inputTextField becomeFirstResponder];
}

//关键盘的时机一：触摸空白处(触摸的是控制器的view)
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

//关键盘的时机二：点击键盘右下角按钮 Did End On Exit
- (IBAction)pressGoButton:(id)sender {
    NSLog(@"关闭了键盘");
}

@end
