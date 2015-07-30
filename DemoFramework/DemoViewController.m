//
//  DemoViewController.m
//  DemoFramework
//
//  Created by FunkingGuo on 15/3/23.
//  Copyright (c) 2015年 FunkingGuo. All rights reserved.
//

#import "DemoViewController.h"
#import "DemoView.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showTextView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
    [self.navigationItem setTitle:@"插件展示"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showTextView
{
    DemoView *view = [[DemoView alloc]initWithFrame:CGRectMake(0, 0, 200, 50)];
    [view showText:@"DemoViewController is show!"];
    [view setCenter:self.view.center];
    [self.view addSubview:view];
}

@end
