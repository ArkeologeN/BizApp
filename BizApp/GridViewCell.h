//
//  GridViewCell.h
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface GridViewCell : AQGridViewCell
@property (nonatomic, retain) UIImageView * imageView;
@property (nonatomic, retain) UILabel * captionLabel;

@end
