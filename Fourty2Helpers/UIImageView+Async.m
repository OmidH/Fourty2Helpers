//
// Created by omid on 11/8/12.
//
// Copyright (c) 2012 42dp. All rights reserved.
//


#import "UIImageView+Async.h"


@implementation UIImageView (Async)

-(void) loadImageWithUrl:(NSURL *)url CompletionBlock:(void (^)(UIImage *))imageBlock ErrorBlock:(void (^)(void)) errorBlock{
    dispatch_async( dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0 ), ^(void)
    {
        NSData * data = [[NSData alloc] initWithContentsOfURL:url];
        UIImage * image = [[UIImage alloc] initWithData:data];
        dispatch_async( dispatch_get_main_queue(), ^(void){
            if( image != nil )
            {
                imageBlock( image );
            } else {
                errorBlock();
            }
        });
    });
}

@end