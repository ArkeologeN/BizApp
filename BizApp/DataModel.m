//
//  DataModel.m
//  BizApp
//
//  Created by Ali Hashmi on 11/12/12.
//  Copyright (c) 2012 The Plumtree Group. All rights reserved.
//

#import "DataModel.h"

@implementation Model
@synthesize name, image, webContent, webContentTitle, webContentImage;
- (id) initWithName:(NSString *)theName andImage:(UIImage *)theImage adnWebContentTitle:(NSString *)theTitle andWebContent:(NSString *)theWebContent andWebContentImage:(UIImage *)theWebImage {
    
    self = [super init];
    if ( self ) {
        self.name = theName;
        self.image = theImage;
        self.webContent = theWebContent;
        self.webContentTitle = theTitle;
        self.webContentImage = theWebImage;
    }
    
    return self;
}

@end
