//
//  RootViewController.m
//  SVWebViewController
//
//  Created by Sam Vermette on 21.02.11.
//  Copyright 2011 Sam Vermette. All rights reserved.
//

#import "ViewController.h"
#import "SVWebViewController.h"

@implementation ViewController


- (void)pushWebViewController {
    NSURL *URL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Friday_(Rebecca_Black_song)"];
	SVWebViewController *webViewController = [[SVWebViewController alloc] initWithURL:URL];
	[self.navigationController pushViewController:webViewController animated:YES];
	[webViewController release];
}


- (void)presentWebViewController {
	NSURL *URL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Friday_(Rebecca_Black_song)"];
	SVModalWebViewController *webViewController = [[SVModalWebViewController alloc] initWithURL:URL];
    webViewController.webDelegate = self;
	webViewController.modalPresentationStyle = UIModalPresentationPageSheet;
	[self presentModalViewController:webViewController animated:YES];	
	[webViewController release];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}

#pragma mark - SVModalWebViewControllerDelegate

- (void)modalWebViewControllerIsDone:(SVModalWebViewController *)viewController {
    [self dismissModalViewControllerAnimated:YES];
}

@end

