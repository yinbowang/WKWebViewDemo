//
//  ViewController.m
//  WKWebView
//
//  Created by wyb on 2020/1/4.
//  Copyright © 2020 世纪佳缘. All rights reserved.
//

#import "ViewController.h"
#import "JYWebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton new];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)btnClick{
    JYWebViewController *vc = [[JYWebViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}





@end
