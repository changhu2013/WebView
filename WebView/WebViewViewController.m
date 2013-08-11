//
//  WebViewViewController.m
//  WebView
//
//  Created by changhu on 13-8-11.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()

@end

@implementation WebViewViewController

@synthesize webView;
@synthesize textFiled;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [webView release];
    [textFiled release];
    [super dealloc];
}
- (IBAction)go:(id)sender {
    
    NSLog(@"go...... %@", textFiled.text);
    
    [textFiled resignFirstResponder];
    
    NSURL *url = [NSURL URLWithString:textFiled.text];
    
    NSLog(@"url: %@", url);
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSLog(@"request %@", request);
    
    [webView loadRequest:request];
    
    NSLog(@"ok .....");
    
    //[url release];
    //如果讲request释放掉，会报错
    //[request release];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSLog(@"加载完成");
    
    NSString *s = [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.textContext"];
    
    NSLog(@"%@", s);
    
    NSLog(@"finish.....");
}

@end
