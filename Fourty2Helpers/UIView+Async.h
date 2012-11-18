//
// Created by omid on 11/16/12.
//
// Copyright (c) 2012 42dp. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (Async)

-(void) loadDataWithUrl:(NSURL *)url CompletionBlock:(void (^)(NSData *))dataBlock ErrorBlock:(void (^)(void)) errorBlock;

@end