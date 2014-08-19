//
//  THWebViewController.h
//  BlogReader
//
//  Created by Ger O'Sullivan on 19/08/2014.
//  Copyright (c) 2014 Ger O'Sullivan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface THWebViewController : UIViewController

@property (strong, nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
