//
//  NCCCViewController.m
//  New Cov
//
//  Created by Grady Milhon on 8/14/14.
//  Copyright (c) 2014 New Cov Community Church. All rights reserved.
//

#import "NCCCHomePageViewController.h"

@interface NCCCHomePageViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)segmentChanged:(id)sender;

- (void)loadRequestFromString:(NSString*)urlString;
@end

@implementation NCCCHomePageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self loadRequestFromString:@"http://www.newcovchurch.org/litesite.cfm?id=135"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadRequestFromString:(NSString*)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}
- (IBAction)segmentChanged:(id)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    switch (selectedSegment) {
        case 0:
            [self loadRequestFromString:@"http://www.newcovchurch.org/litesite.cfm?id=135"];
            break;
        case 1:
            [self loadRequestFromString:@"http://www.newcovchurch.org/litesite.cfm?id=236"];
            break;
        case 2:
            [self loadRequestFromString:@"http://www.newcovchurch.org/litesite.cfm?id=310"];
            break;
        case 3:
            [self loadRequestFromString:@"http://www.newcovchurch.org/litesite.cfm?id=306"];
            break;
        default:
            break;
    }
}
@end
