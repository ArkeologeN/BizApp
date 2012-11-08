//
//  BusinessService.h
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BusinessService : NSObject

@property (nonatomic, copy) NSString* caption;
@property (nonatomic, retain) UIImage * image;

-(id)initWithCaption:(NSString*)theCaption andImage:(UIImage*)theImage;
+ (NSArray *)getSampleData;
@end
