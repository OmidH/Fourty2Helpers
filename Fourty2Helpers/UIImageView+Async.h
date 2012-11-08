//
// Created by omid on 11/8/12.
//
// Copyright (c) 2012 42dp. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImageView (Async)

-(void) loadImageWithUrl:(NSURL *)url CompletionBlock:(void (^)(UIImage *))imageBlock ErrorBlock:(void (^)(void)) errorBlock;

@end