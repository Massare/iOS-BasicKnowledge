//
//  ViewController.m
//  UISwitch_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)pressSwitch:(id)sender {
    if (self.mySwitch.on) {
        NSLog(@"开关打开了");
    }else {
        NSLog(@"开关关闭了");
    }
}

- (IBAction)clickButton:(id)sender {
//    self.mySwitch.on = !self.mySwitch.on;
    [self.mySwitch setOn:!self.mySwitch.isOn animated:YES];
}

@end
