//
//  ViewController.h
//  Collection View
//
//  Created by lwb on 16/4/20.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong) NSDictionary *pickerData;
@property(nonatomic,strong) NSArray *pickProvincesData;
@property(nonatomic,strong) NSArray *pickerCitiesData;
@property (weak, nonatomic) IBOutlet UIPickerView *UIpickerView;
- (IBAction)onclick:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

