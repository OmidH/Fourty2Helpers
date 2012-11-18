//
// Created by omid on 11/16/12.
//
// Copyright (c) 2012 42dp. All rights reserved.
//


#import "UIView+Async.h"


@implementation UIView (Async)

-(void) loadDataWithUrl:(NSURL *)url CompletionBlock:(void (^)(NSData *))dataBlock ErrorBlock:(void (^)(void)) errorBlock{
    dispatch_async( dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0 ), ^(void)
    {
        NSData * data = [[NSData alloc] initWithContentsOfURL:url];
        dispatch_async( dispatch_get_main_queue(), ^(void){
            if( data != nil )
            {
                dataBlock( data );
            } else {
                errorBlock();
            }
        });
    });
}

@end