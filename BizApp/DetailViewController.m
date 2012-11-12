//
//  DetailViewController.m
//  BizApp
//
//  Created by Ali Hashmi on 11/12/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize titleLabel, articleWebView, articleImageView, metaLabel, nameLabel, scrollView, service;

- (void) viewDidLoad {
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [self.view addSubview:scrollView];
    
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 300, 61)];
    [titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
    [titleLabel setNumberOfLines:2];
    [scrollView addSubview:titleLabel];
    
    self.articleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 58, 320, 109)];
    [articleImageView setContentMode:UIViewContentModeScaleAspectFill];
    [articleImageView setClipsToBounds:YES];
    [scrollView addSubview:articleImageView];
    
    
    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 169, 170, 21)];
    [nameLabel setFont:[UIFont systemFontOfSize:13]];
    [nameLabel setText:@"By John Doe / Posted under: "];
    [scrollView addSubview:nameLabel];
    
    self.metaLabel = [[UILabel alloc] initWithFrame:CGRectMake(183, 169, 117, 21)];
    [metaLabel setFont:[UIFont systemFontOfSize:13]];
    [metaLabel setTextColor:[UIColor colorWithRed:30.0/255 green:144.0/255 blue:224.0/255 alpha:1.0]];
    [scrollView addSubview:metaLabel];
    
    
    self.articleWebView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 204, 300, 190)];
    [scrollView addSubview:articleWebView];
    
    
    UIView* dividerView = [[UIView alloc] initWithFrame:CGRectMake(10, 194, 300, 2)];
    [dividerView setBackgroundColor:[UIColor lightGrayColor]];
    [scrollView addSubview:dividerView];
    
    
    [titleLabel setText:service.webContentTitle];
    [articleImageView setImage:service.webContentImage];
    [articleWebView loadHTMLString:service.webContent baseURL:nil];
    [metaLabel setText:service.caption];
    
    
    
    [super viewDidLoad];
}
@end
