//
//  UIImage+NOUtils.h
//  Photo Dialer
//
//  Created by Kyle Turner on 9/5/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NOUtils)

+ (UIImage *)placeholderImage;
+ (UIImage *)filledImageFrom:(UIImage *)source withColor:(UIColor *)color;

@end