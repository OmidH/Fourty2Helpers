//
//  UIImage+Extras.h
//  Fourty2Helpers
//
//  Created by Omid Hashemi on 10/5/12.
//  Copyright (c) 2012 42dp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extras)


- (UIImage*)imageByBestFitForSize:(CGSize)targetSize;
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage *)resizedImageWithContentMode:(UIViewContentMode)contentMode imageToScale:(UIImage*)imageToScale
                                  bounds:(CGSize)bounds interpolationQuality:(CGInterpolationQuality)quality;


@end
