//
//  ViewController.m
//  WEBView(网页视图)
//
//  Created by lwb on 16/4/19.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;
- (IBAction)testloadHTML:(id)sender;//定义三个动作方法
- (IBAction)testloadData:(id)sender;
- (IBAction)testloadrequest:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testloadHTML:(id)sender {
    NSString *htmlpath = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    NSURL *bundleur = [NSURL fileURLWithPath:[[NSBundle mainBundle]bundlePath]];
    NSError *error = nil;
    NSString *html = [[NSString alloc]initWithContentsOfFile:htmlpath encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        [self.webview loadHTMLString:html baseURL:bundleur];
    }
}

- (IBAction)testloadData:(id)sender {
    NSString *htmlpath = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    NSData *htmldata = [[NSData alloc]initWithContentsOfFile:htmlpath];
    if (error == nil) {
        [self.webview loadData:htmldata MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:bundleUrl];
    }
    
}

- (IBAction)testloadrequest:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.51work6.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:request];
    self.webview.delegate = self;

}
#pragma mark - UIWebViewFelegate
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"%@",[webView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"]);
}
@end
