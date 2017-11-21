//
//  ViewController.m
//  LEGO-SDK-Simple
//
//  Created by Keep Jacky on 2017/11/15.
//  Copyright © 2017年 UED Center. All rights reserved.
//

#import "ViewController.h"
#import <LEGO-SDK/LGOWebView.h>
#import <LEGO-SDK/LGOWKWebView.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Simple" ofType:@"html"];
    NSString *htmlString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
        ([(LGOWKWebView *)self.webView loadHTMLString:htmlString baseURL:nil]);
    } else {
        ([(LGOWebView *)self.webView loadHTMLString:htmlString baseURL:nil]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
