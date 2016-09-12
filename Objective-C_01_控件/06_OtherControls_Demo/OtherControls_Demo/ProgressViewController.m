//
//  ProgressViewController.m
//  OtherControls_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

@end

@implementation ProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.progressView.progress = 0;
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(valueChanged:) userInfo:nil repeats:YES];
}

- (void)valueChanged:(NSTimer *)sender {
    self.progressView.progress += 0.005;
    
    if (self.progressView.progress == 1) {
        [sender invalidate];
        NSLog(@"定时器关闭");
    }
}


@end
