//
//  SingletonCache.m
//  Goggli
//
//  Created by Omid Hashemi on 8/30/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import "SingletonCache.h"

static SingletonCache *sharedMyAppCache = nil;

@implementation SingletonCache

+ (SingletonCache *) sharedCache {
    if (sharedMyAppCache == nil) {
        sharedMyAppCache = [[super allocWithZone:NULL] init];
    }
    return sharedMyAppCache;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self sharedCache];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

//- (id)retain {
//    return self;
//}
//
//- (NSUInteger)retainCount {
//    return NSUIntegerMax;  //denotes an object that cannot be released
//}
//
//- (void)release{
//    //do nothing
//}
//
//- (id)autorelease {
//    return self;
//}

@end
