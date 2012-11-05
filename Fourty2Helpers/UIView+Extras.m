//
// Created by omid on 11/2/12.
//
// Copyright (c) 2012 42dp. All rights reserved.
//


#import "UIView+Extras.h"


@implementation UIView (Extras)

-(void) removeAllSubViews {
    if (self.subviews.count > 0){
        for (int x = 0; x < self.subviews.count; x++) {
            UIView *subView = [self.subviews objectAtIndex:x];
            [subView removeFromSuperview];
        }
    }
}

@end