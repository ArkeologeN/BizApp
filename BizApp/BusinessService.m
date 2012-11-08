//
//  BusinessService.m
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//


#import "BusinessService.h"

@implementation BusinessService : NSObject
@synthesize caption, image;

- (id) initWithCaption:(NSString *)theCaption andImage:(UIImage *)theImage {
    self = [super init];
    if ( self ) {
        self.caption = theCaption;
        self.image = theImage;
    }
    return self;
}

+ (NSArray *)getSampleData {
    BusinessService* service1 = [[BusinessService alloc] initWithCaption:@"Litigation" andImage:[UIImage imageNamed:@"service-1.jpg"]];
    BusinessService* service2 = [[BusinessService alloc] initWithCaption:@"Family Law" andImage:[UIImage imageNamed:@"service-2.jpg"]];
    BusinessService* service3 = [[BusinessService alloc] initWithCaption:@"Conveyancing" andImage:[UIImage imageNamed:@"service-3.jpg"]];
    BusinessService* service4 = [[BusinessService alloc] initWithCaption:@"Corporate Law" andImage:[UIImage imageNamed:@"service-4.jpg"]];
    BusinessService* service5 = [[BusinessService alloc] initWithCaption:@"Solicitors" andImage:[UIImage imageNamed:@"service-5.jpg"]];
    BusinessService* service6 = [[BusinessService alloc] initWithCaption:@"Tax Law" andImage:[UIImage imageNamed:@"service-6.jpg"]];
    return [NSArray arrayWithObjects:service1, service2, service3, service4, service5, service6, nil];}

@end
