//
//  DetailViewController.h
//  BizApp
//
//  Created by Ali Hashmi on 11/12/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BusinessService.h"

@interface DetailViewController : UIViewController
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *articleImageView;
@property (nonatomic, strong) UILabel * metaLabel;
@property (nonatomic, strong) UILabel * nameLabel;
@property (nonatomic, strong) UIWebView* articleWebView;
@property (nonatomic, strong) UIScrollView* scrollView;
@property (nonatomic, retain) BusinessService* service;
@end
