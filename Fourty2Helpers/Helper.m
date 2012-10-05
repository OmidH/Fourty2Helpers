//
//  Helper.m
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import "Helper.h"

@implementation Helper

+(UIColor *) getRandomColor {
    return [UIColor colorWithRed:(random()%100)/(float)100 green:(random()%100)/(float)100 blue:(random()%100)/(float)100 alpha:1];
}

+(int) getRandomNumberWithMin:(int) min Max:(int)max {
    int tmp_rand = arc4random() % max;
    
    if (tmp_rand < min) {
        tmp_rand += min;
    }
    
    if(tmp_rand > max)
        tmp_rand %= max;
    
    return tmp_rand;
}

+(NSString *) getFullPath:(NSString *)fileName {
    if(fileName && fileName.length > 0) {
        NSArray *arr = [fileName componentsSeparatedByString:@"."];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:[arr objectAtIndex:0] ofType:[arr objectAtIndex:1]];
        return filePath;
    }
    
    return nil;
}

+ (NSString *)GetUUID
{
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return (__bridge NSString *)string;
}

@end
