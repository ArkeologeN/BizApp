//
//  DataModel.h
//  BizApp
//
//  Created by Ali Hashmi on 11/12/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Model : NSObject
@property (nonatomic, copy) NSString* name;
@property (nonatomic, retain) UIImage* image;
@property (nonatomic, copy) NSString* webContentTitle;
@property (nonatomic, copy) NSString* webContent;
@property (nonatomic, retain) UIImage* webContentImage;

- (id) initWithName:(NSString*)theName andImage:(UIImage*)theImage adnWebContentTitle:(NSString*)theTitle andWebContent:(NSString*)theWebContent andWebContentImage:(UIImage*)theWebImage;
@end
