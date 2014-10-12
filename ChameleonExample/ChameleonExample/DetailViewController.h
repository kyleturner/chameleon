//
//  DetailViewController.h
//  ChameleonExample
//
//  Created by Kyle Turner on 10/12/14.
//  Copyright (c) 2014 NightOwl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

