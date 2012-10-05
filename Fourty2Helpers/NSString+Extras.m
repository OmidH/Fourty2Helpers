//
//  NSString+Extras.m
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import "NSString+Extras.h"

@implementation NSString (Extras)

-(CGSize) getSizeOfTextForConstrainedSize:(CGSize) cSize Font:(UIFont *) font {
    CGSize stringSize = [self sizeWithFont:font constrainedToSize:cSize lineBreakMode:UILineBreakModeWordWrap];
    return stringSize;
}

-(BOOL) validateAsEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL isValid = [emailTest evaluateWithObject:self];
    return isValid;
}

@end
