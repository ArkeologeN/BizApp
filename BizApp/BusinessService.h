//
//  BusinessService.h
//  BizApp
//
//  Created by Ali Hashmi on 11/8/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BusinessService : NSObject

@property (nonatomic, copy) NSString* caption;
@property (nonatomic, retain) UIImage * image;
@property (nonatomic, copy) NSString* webContentTitle;

@property (nonatomic, copy) NSString* webContent;

@property (nonatomic, retain) UIImage* webContentImage;

-(id)initWithCaption:(NSString*)theCaption andImage:(UIImage*)theImage andWebContentTitle:(NSString*)theTitle andWebContent:(NSString*)theWebContent andWebContentImage:(UIImage*)theWebImage;
+ (NSArray *)getSampleData;
@end
