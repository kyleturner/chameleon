//
//  UIColor+NOUtils.m
//  Photo Dialer
//
//  Created by Kyle Turner on 9/5/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import "UIColor+NOUtils.h"


@implementation UIColor (NOUtils)


+ (UIColor *)navigationBarColor
{
    return [UIColor colorWithRed:(0x25 / 255.0) green:(0xDC / 255.0) blue:(0xD6 / 255.0) alpha:1.0];
}

+ (UIColor *)searchBarColor
{
    return [UIColor colorWithRed:(0x3C / 255.0) green:(0x3C / 255.0) blue:(0x50 / 255.0) alpha:1.0];
}

+ (UIColor *)buttonColor
{
    return nil;
}

+ (UIColor *)iconColor;
{
    return [UIColor colorWithRed:(0x3C / 255.0) green:(0x3C / 255.0) blue:(0x4F / 255.0) alpha:1.0];
}

+ (UIColor *)iconColorHighlighted
{
    return [UIColor whiteColor];
}

+ (UIColor *)blueTintColor
{
    return [UIColor colorWithRed:(0x21 / 255.0) green:(0x90 / 255.0) blue:(0xFB / 255.0) alpha:1.0];
}

+ (UIColor *)darkTextColor
{
    return [UIColor colorWithRed:(0x3C / 255.0) green:(0x3C / 255.0) blue:(0x4F / 255.0) alpha:1.0];
}

+ (UIColor *)navigationDisabledTintColor
{
    return [UIColor colorWithWhite:0.908 alpha:0.80];
}

+ (UIColor *)barButtonTintColor
{
    return [UIColor colorWithRed:(0x3C / 255.0) green:(0x3C / 255.0) blue:(0x4F / 255.0) alpha:1.0];
}

+ (UIColor *)viewBackgroundColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)viewDarkBackgroundColor
{
    return [UIColor colorWithRed:(0x3B / 255.0) green:(0x3B / 255.0) blue:(0x4F / 255.0) alpha:1.0];
}

+ (UIColor *)cellBackgroundColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)borderColor
{
    return [UIColor darkGrayColor];
}

+ (UIColor *)imageViewBackgroundColor
{
    return [UIColor whiteColor];
}

+ (UIColor *)actionSheetBackgroundColor
{
    return [UIColor colorWithRed:(0x21 / 255.0) green:(0x90 / 255.0) blue:(0xFB / 255.0) alpha:1.0];
}

+ (UIColor *)textColor
{
    return [UIColor colorWithRed:0.557 green:0.537 blue:0.478 alpha:1.000];
}

@end