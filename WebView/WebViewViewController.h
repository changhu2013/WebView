//
//  WebViewViewController.h
//  WebView
//
//  Created by changhu on 13-8-11.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController <UIWebViewDelegate>{

    IBOutlet UIWebView *webView;
    
    IBOutlet UITextField *textFiled;
    
}


@property (retain, nonatomic) UITextField *textFiled;

@property (retain, nonatomic) UIWebView *webView;

- (IBAction)go:(id)sender;

@end
