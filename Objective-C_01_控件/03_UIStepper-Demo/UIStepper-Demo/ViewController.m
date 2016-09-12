//
//  ViewController.m
//  UIStepper-Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stepper.minimumValue = 0;
    self.stepper.maximumValue = 30;
    self.stepper.value = 12;
    self.stepper.stepValue = 1;
    
    //界面刚一呈现，显示stepper背后的value
    self.valueLabel.text = [NSString stringWithFormat:@"%.0f",self.stepper.value];
}

//value changed事件
- (IBAction)showStepperValue:(UIStepper *)sender {
    self.valueLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
}


@end
