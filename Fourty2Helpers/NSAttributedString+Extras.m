//
//  NSAttributedString+Extras.m
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import "NSAttributedString+Extras.h"
#import <CoreText/CoreText.h>

@implementation NSAttributedString (Extras)

-(CGFloat)heightForAttributedStringWithWidth: (CGFloat)inWidth
{
    CGFloat H = 0;
    
    // Create the framesetter with the attributed string.
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString( (__bridge CFMutableAttributedStringRef) self);
    
    CGRect box = CGRectMake(0,0, inWidth, CGFLOAT_MAX);
    
    CFIndex startIndex = 0;
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, box);
    
    // Create a frame for this column and draw it.
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(startIndex, 0), path, NULL);
    
    // Start the next frame at the first character not visible in this frame.
    //CFRange frameRange = CTFrameGetVisibleStringRange(frame);
    //startIndex += frameRange.length;
    
    CFArrayRef lineArray = CTFrameGetLines(frame);
    CFIndex j = 0, lineCount = CFArrayGetCount(lineArray);
    CGFloat h, ascent, descent, leading;
    
    for (j=0; j < lineCount; j++)
    {
        CTLineRef currentLine = (CTLineRef)CFArrayGetValueAtIndex(lineArray, j);
        CTLineGetTypographicBounds(currentLine, &ascent, &descent, &leading);
        h = ascent + descent + leading;
        //        NSLog(@"%f", h);
        H+=h;
    }
    
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
    
    
    return H;
}


@end
