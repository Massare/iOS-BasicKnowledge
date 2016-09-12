//
//  PickerViewController.m
//  OtherControls_Demo
//
//  Created by Austen on 16/9/10.
//  Copyright © 2016年 mlc. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>

//联动效果的数据存储
@property(nonatomic,strong)NSDictionary *dataDictionary;

@property(nonatomic,strong)NSArray *citys;
@property(nonatomic,strong)NSArray *subAreas;

@end

@implementation PickerViewController

- (NSDictionary *)dataDictionary {
    if (!_dataDictionary) {
        _dataDictionary = @{
                            @"北京":@[@"东城",@"西城",@"朝阳",@"海淀"],
                            @"上海":@[@"静安",@"徐汇",@"浦东"],
                            @"广州":@[@"白云",@"越秀",@"天河"]
                            };
    }
    return _dataDictionary;
}

- (NSArray *)citys {
    if (!_citys) {
        _citys = self.dataDictionary.allKeys;
    }
    return _citys;
}

- (NSArray *)subAreas {
    if (!_subAreas) {
        _subAreas = [self.dataDictionary objectForKey:self.citys[0]];
    }
    return _subAreas;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component==0) {
        return self.citys.count;
    }else{
        return self.subAreas.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return self.citys[row];
    }else{
        return self.subAreas[row];
    }
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        NSString *cityName = self.citys[row];
        self.subAreas = [self.dataDictionary valueForKey:cityName];
        [pickerView reloadComponent:1];
        //重新设置第二列中第一行处于被选中的状态
        [pickerView selectRow:0 inComponent:1 animated:YES];
    }
}



@end
