//
//  SegmentedViewController.m
//  OtherControls_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "SegmentedViewController.h"

@interface SegmentedViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *showImageView;

@end

@implementation SegmentedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


- (IBAction)clickSegmentedControl:(UISegmentedControl *)sender {
    NSInteger index = sender.selectedSegmentIndex;
    NSString *imageName = [NSString stringWithFormat:@"channel0%ld", index + 1];
    self.showImageView.image = [UIImage imageNamed:imageName];
}


@end
