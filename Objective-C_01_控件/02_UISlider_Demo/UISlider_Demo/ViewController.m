//
//  ViewController.m
//  UISlider_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultLabel.backgroundColor = [UIColor colorWithRed:self.redSlider.value green:self.blueSlider.value blue:self.greenSlider.value alpha:1.0];

}

- (IBAction)colorChangedWithSlider:(id)sender {
    
    self.resultLabel.backgroundColor = [UIColor colorWithRed:self.redSlider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1.0];
}


@end
