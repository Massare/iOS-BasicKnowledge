//
//  DatePickerViewController.m
//  OtherControls_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)chooseDate:(UIDatePicker *)sender {
    
    NSDate *date = sender.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSString *dateString = [formatter stringFromDate:date];
    
    self.dateLabel.text = dateString;
}


@end
