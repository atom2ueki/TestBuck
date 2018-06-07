//
//  ViewController.m
//  TestBuck
//
//  Created by tonyli on 6/7/18.
//  Copyright © 2018 tonyli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100.0, 200.0, 100.0, 100.0)];
    button.titleLabel.text = @"Click Me";
    button.backgroundColor = UIColor.cyanColor;
    button.userInteractionEnabled = YES;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(click:) forControlEvents: UIControlEventTouchUpInside];

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(200.0, 200.0, 50.0, 50.0)];
    view.backgroundColor = UIColor.brownColor;
    [self.view addSubview:view];
}

- (void)click:(UIButton*)sender {
  NSLog(@"123456789");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
