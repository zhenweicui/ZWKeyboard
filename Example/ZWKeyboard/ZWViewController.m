//
//  ZWViewController.m
//  ZWKeyboard
//
//  Created by zhenweicui on 02/25/2017.
//  Copyright (c) 2017 zhenweicui. All rights reserved.
//

#import "ZWViewController.h"
#import "IDCardTextField.h"
@interface ZWViewController ()

@end

@implementation ZWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    IDCardTextField *passTF = [[IDCardTextField alloc]initWithFrame:CGRectMake(100, 100, self.view.bounds.size.width - 200, 40)];
    passTF.backgroundColor = [UIColor grayColor];
    [self.view addSubview:passTF];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
