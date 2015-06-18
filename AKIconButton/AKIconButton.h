//
//  AKIconButton.h
//  AKIconButton
//
//  Created by Ken M. Haggerty on 11/13/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface AKIconButton : UIButton
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *fontForText;
@property (nonatomic, strong) UIImage *icon;
@property (nonatomic) UIViewContentMode contentModeForIcon;
@property (nonatomic) BOOL overlaps;
@property (nonatomic) UIControlContentHorizontalAlignment horizontalAlignment;
@property (nonatomic) UIControlContentVerticalAlignment verticalAlignment;
@property (nonatomic) BOOL adjustsFontSizeToFitWidth;
@property (nonatomic) CGFloat minimumScaleFactorForLabel;
@property (nonatomic) NSInteger numberOfLinesForLabel;
@end