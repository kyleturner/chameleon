//
//  NOTheme.h
//  ChameleonExample
//
//  Created by Kyle Turner on 10/12/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NOTheme : NSObject

+ (void)applyTheme;

+ (NSDictionary *)navigationBarTitleTextAttributes;

+ (UIFont *)fontOfSize:(CGFloat)size;
+ (UIFont *)blackFontOfSize:(CGFloat)size;
+ (UIFont *)boldFontOfSize:(CGFloat)size;

+ (UIFont *)buttonFont;
+ (UIFont *)customButtonFont;

@end
