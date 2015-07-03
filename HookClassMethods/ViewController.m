//
//  ViewController.m
//  HookClassMethods
//
//  Created by 小伍 on 15-7-3.
//  Copyright (c) 2015年 小伍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    [imageView setImage:[UIImage imageNamed:@"0.jpg"]];
    [self.view addSubview:imageView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(100, 100, 100, 100)];
    [button setBackgroundColor:[UIColor colorWithRed:1.000 green:0.730 blue:0.511 alpha:1.000]];
    [button setTitle:@"button" forState:UIControlStateNormal];

    [self.view addSubview:button];
    
    
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
