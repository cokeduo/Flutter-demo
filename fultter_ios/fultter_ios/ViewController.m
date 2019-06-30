//
//  ViewController.m
//  fultter_ios
//
//  Created by wangduo on 2019/6/30.
//  Copyright © 2019 wangduo. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
#import "MyFlutterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = @"Home";
    
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    pushButton.center = self.view.center;
    [pushButton addTarget:self action:@selector(pushFlutterViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    
}

- (void)pushFlutterViewController{
    MyFlutterViewController *flutterVC = [[MyFlutterViewController alloc] init];
    [self.navigationController pushViewController:flutterVC animated:YES];
}


@end
