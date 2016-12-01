//
//  ViewController.m
//  Collection View
//
//  Created by lwb on 16/4/20.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return [self.pickProvincesData count];
        
    }else{
        return [self.pickerCitiesData count];
    }
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return [self.pickProvincesData objectAtIndex:row];
    }else{
        return [self.pickerCitiesData objectAtIndex:row];
    }
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        NSString *seletedProvide = [self.pickProvincesData objectAtIndex:row];
        NSArray *array = [self.pickerData objectForKey:seletedProvide];
        self.pickerCitiesData = array;
        [self.UIpickerView reloadComponent:1];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"provinces_cities" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc]initWithContentsOfFile:plistPath];
    self.pickerData = dict;
    self.pickProvincesData = [self.pickerData allKeys];
    NSString *seletedProvide = [self.pickProvincesData objectAtIndex:0];
    self.pickerCitiesData = [self.pickerData objectForKey:seletedProvide];
    self.UIpickerView.dataSource = self;
    self.UIpickerView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onclick:(id)sender {
    NSInteger row1 = [self.UIpickerView selectedRowInComponent:0];
    NSInteger row2 = [self.UIpickerView selectedRowInComponent:1];
    NSString *selected1 = [self.pickProvincesData objectAtIndex:row1];
    NSString *selected2 = [self.pickerCitiesData objectAtIndex:row2];
    NSString *title = [[NSString alloc]initWithFormat:@"%@,%@市",selected1,selected2];
    self.label.text = title;
}

@end
