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

-(BOOL) validateAsUrl {
//possibility 1:
    
//    NSString *urlRegEx = @"(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+";
//    NSPredicate *urlTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", urlRegEx];
//    return [urlTest evaluateWithObject:self];
    
// possibility 2:
    
    NSURL *candidateURL = [NSURL URLWithString:self];
    // WARNING > "test" is an URL according to RFCs, being just a path
    // so you still should check scheme and all other NSURL attributes you need
    if (candidateURL && candidateURL.scheme && candidateURL.host) {
        // candidate is a well-formed url with:
        //  - a scheme (like http://)
        //  - a host (like stackoverflow.com)
        return YES;
    } else
        return NO;
}

-(BOOL) validateAsPhoneNumber {
    NSString *phoneRegex = @"[235689][0-9]{6}([0-9]{3})?";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    BOOL matches = [test evaluateWithObject:self];
    return matches;
}

@end
