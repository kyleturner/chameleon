//
//  UIImage+NOUtils.m
//  Photo Dialer
//
//  Created by Kyle Turner on 9/5/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import "UIImage+NOUtils.h"

@implementation UIImage (NOUtils)

+ (UIImage *)placeholderImage
{
    static UIImage *placeholderImage;
    if (!placeholderImage) {
        placeholderImage = [UIImage imageNamed:@"icon-avatar_default"];
    }
    return placeholderImage;
}

+ (UIImage *)filledImageFrom:(UIImage *)source withColor:(UIColor *)color
{    
    // begin a new image context, to draw our colored image onto with the right scale
    UIGraphicsBeginImageContextWithOptions(source.size, NO, [UIScreen mainScreen].scale);
    
    // get a reference to that context we created
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // set the fill color
    [color setFill];
    
    // translate/flip the graphics context (for transforming from CG* coords to UI* coords
    CGContextTranslateCTM(context, 0, source.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextSetBlendMode(context, kCGBlendModeColorBurn);
    CGRect rect = CGRectMake(0, 0, source.size.width, source.size.height);
    CGContextDrawImage(context, rect, source.CGImage);
    
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context,kCGPathFill);
    
    // generate a new UIImage from the graphics context we drew onto
    UIImage *coloredImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //return the color-burned image
    return coloredImg;
}

@end