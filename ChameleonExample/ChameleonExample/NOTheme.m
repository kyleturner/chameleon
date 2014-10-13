//
//  NOTheme.m
//  ChameleonExample
//
//  Created by Kyle Turner on 10/12/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import "NOTheme.h"
#import "NONavigationController.h"
#import "NOLabel.h"
#import "NOButton.h"
#import "UIColor+NOUtils.h"
#import <MessageUI/MFMailComposeViewController.h>


static NSString *kFontName = @"AvenirNext-Regular";
static NSString *kBlackFontName = @"AvenirNext-Bold";
static NSString *kBoldFontName = @"AvenirNext-Bold";

@implementation NOTheme

+ (void)applyTheme
{
    [self applyThemeToNavigationBar];
    [self applyThemeToSearchBar];
    [self applyThemeToBarButtonItems];
    [self applyThemeToLabels];
    [self applyThemeToButtons];
    [self applyThemeToRefreshControl];
}

+ (void)applyThemeToNavigationBar
{
    [[UINavigationBar appearanceWhenContainedIn:NONavigationController.class, nil]
     setTitleTextAttributes:[self navigationBarTitleTextAttributes]];
    [[UINavigationBar appearanceWhenContainedIn:NONavigationController.class, nil]
     setBarTintColor:[UIColor navigationBarColor]];
//    [[UINavigationBar appearanceWhenContainedIn:NONavigationController.class, nil]
//     setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor darkTextColor], NSFontAttributeName: [self boldFontOfSize:18.0]}];
}

+ (NSDictionary *)navigationBarTitleTextAttributes
{
//    return @{NSForegroundColorAttributeName: [UIColor darkTextColor],  NSFontAttributeName: [self boldFontOfSize:25.0]};
    return nil;
}

+ (void)applyThemeToSearchBar
{
    [[UISearchBar appearance] setTintColor:[UIColor whiteColor]];
    [[UISearchBar appearance] setBarTintColor:[UIColor searchBarColor]];
}

+ (void)applyThemeToBarButtonItems
{
    [[UIBarButtonItem appearance] setTintColor:[UIColor barButtonTintColor]];
    [[UIBarButtonItem appearance] setTitleTextAttributes: @{NSFontAttributeName:[self buttonFont],
                                                            NSForegroundColorAttributeName: [UIColor barButtonTintColor]} forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes: @{NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateHighlighted];
    [[UIBarButtonItem appearance] setTitleTextAttributes: @{NSFontAttributeName:[self buttonFont],
                                                            NSForegroundColorAttributeName: [UIColor navigationDisabledTintColor]} forState:UIControlStateDisabled];
}

+ (void)applyThemeToLabels
{
    [[NOLabel appearance] setFont:[self fontOfSize:17.0]];
    [[NOLabel appearance] setTextColor:[UIColor darkTextColor]];
}

+ (void)applyThemeToButtons
{
    [[NOButton appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [[NOButton appearance] setBackgroundColor:[UIColor navigationBarColor]];
    [[NOButton appearance] setTintColor:[UIColor clearColor]];
    [[NOButton appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [[NOButton appearance] setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
}

+ (void)applyThemeToRefreshControl
{
    [[UIRefreshControl appearance] setTintColor:[UIColor whiteColor]];
}

+ (UIFont *)buttonFont
{
    return [self fontOfSize:18.0];
}

+ (UIFont *)customButtonFont
{
    return [self fontOfSize:16.0];
}

+ (UIFont *)fontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:kFontName size:size];
}

+ (UIFont *)blackFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:kBlackFontName size:size];
}

+ (UIFont *)boldFontOfSize:(CGFloat)size
{
    return [UIFont fontWithName:kBoldFontName size:size];
}

@end
