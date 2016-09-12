//
//  IndicatorViewController.m
//  OtherControls_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "IndicatorViewController.h"

@interface IndicatorViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *myIndicator;

@end

@implementation IndicatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myIndicator.hidesWhenStopped = YES;
}

- (IBAction)startOrStopButton:(id)sender {
    
    if (self.myIndicator.isAnimating) {
        [self.myIndicator stopAnimating];
    }else {
        [self.myIndicator startAnimating];
    }
}


@end
