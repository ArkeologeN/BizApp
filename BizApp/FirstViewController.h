//
//  FirstViewController.h
//  BizApp
//
//  Created by Ali Hashmi on 11/7/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXLabel.h"

@interface FirstViewController : UIViewController

@property (nonatomic, strong) IBOutlet FXLabel* logoLabel;
@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;
@property (nonatomic, strong) IBOutlet UIButton* callUsButton;
@property (nonatomic, strong) IBOutlet UIButton* directionButton;
@property (nonatomic, strong) IBOutlet UILabel* copyrightLabel;

@end
