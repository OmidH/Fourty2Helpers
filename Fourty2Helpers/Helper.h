//
//  Helper.h
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Helper : NSObject

+(UIColor *) getRandomColor;
+(int) getRandomNumberWithMin:(int) min Max:(int)max;
//+(CGSize) getSizeOfText:(NSString *) text ConstrainedSize:(CGSize) cSize Font:(UIFont *) font;
//+(CGFloat)heightForAttributedString:(NSAttributedString *)attrString forWidth:(CGFloat)inWidth;
+(NSString *) getFullPath:(NSString *)fileName;

@end
