//
//  SingletonCache.h
//  Goggli
//
//  Created by Omid Hashemi on 8/30/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonCache : NSCache

+ (SingletonCache *) sharedCache;

@end
