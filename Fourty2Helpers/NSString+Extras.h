//
//  NSString+Extras.h
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extras)

-(CGSize) getSizeOfTextForConstrainedSize:(CGSize) cSize Font:(UIFont *) font;
-(BOOL) validateAsEmail;

@end
