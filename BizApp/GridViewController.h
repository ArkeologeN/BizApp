//
//  GridViewController.h
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface GridViewController : UIViewController <AQGridViewDelegate, AQGridViewDataSource>


@property (nonatomic, retain) IBOutlet AQGridView * gridView;

@property (nonatomic, retain) NSArray * services;


@end
