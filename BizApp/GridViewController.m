//
//  GridViewController.m
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import "GridViewController.h"
#import "GridViewCell.h"
#import "BusinessService.h"
#import <QuartzCore/QuartzCore.h>

@implementation GridViewController

@synthesize gridView, services;

- (void) viewDidLoad {
    [super viewDidLoad];
    self.gridView = [[AQGridView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.gridView.autoresizingMask = UIViewAutoresizingFlexibleWidth| UIViewAutoresizingFlexibleHeight;
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
    [self.view  addSubview:gridView];
    UIImage * backgroundPattern = [UIImage imageNamed:@"bg-app.png"];
    [self.view setBackgroundColor:[UIColor  colorWithPatternImage:backgroundPattern]];
    
    self.services = [BusinessService getSampleData];
    [self.gridView reloadData];
    
    UIView* gradientView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 4)];
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = gradientView.bounds;
    UIColor* lightColor = [[UIColor blackColor] colorWithAlphaComponent:0.0];
    UIColor* darkColor  = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    gradient.colors = [NSArray arrayWithObjects:(id)darkColor.CGColor, (id)lightColor.CGColor, nil];
    [gradientView.layer insertSublayer:gradient atIndex:0];
    [self.view addSubview:gradientView];
    
    
}

- (NSUInteger) numberOfItemsInGridView:(AQGridView *)gridView {
    return [services count];
}

- (AQGridViewCell *) gridView: (AQGridView *) aGridView cellForItemAtIndex: (NSUInteger) index
{
    static NSString * PlainCellIdentifier = @"PlainCellIdentifier";
    
    
    GridViewCell * cell = (GridViewCell *)[aGridView dequeueReusableCellWithIdentifier:@"PlainCellIdentifier"];
    
    if ( cell == nil )
    {
        cell = [[GridViewCell alloc] initWithFrame: CGRectMake(0.0, 0.0, 160, 123)
                                   reuseIdentifier: PlainCellIdentifier];
        
    }
    
    BusinessService* service = [services objectAtIndex:index];
    
    [cell.imageView setImage:service.image];
    [cell.captionLabel setText:service.caption];
    
    return cell;
}

- (CGSize) portraitGridCellSizeForGridView:(AQGridView *)gridView {
    return (CGSizeMake(160.0, 123));
}

- (void) gridView:(AQGridView *)gridView didSelectItemAtIndex:(NSUInteger)index {
    [self performSegueWithIdentifier:@"detail" sender:self];
}
@end
