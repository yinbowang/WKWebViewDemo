//
//  JYWebViewController.m
//  WKWebView
//
//  Created by wyb on 2020/1/4.
//  Copyright © 2020 世纪佳缘. All rights reserved.
//

#import "JYWebViewController.h"
#import <WebKit/WebKit.h>

@interface JYWebViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation JYWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebView *webView = [[WKWebView alloc] init];
    // 导航代理
    webView.navigationDelegate = self;
    // UI代理
    webView.UIDelegate = self;
    webView.frame = self.view.bounds;
    NSURL *url = [NSURL URLWithString:@"https://weibo.com"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:webView];
    
}



@end
