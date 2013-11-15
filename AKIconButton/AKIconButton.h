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

typedef enum {
    LEFT = 1,
    CENTER,
    RIGHT,
    JUSTIFIED
} AKHorizontalAlignment;

typedef enum {
    TOP = 1,
    MIDDLE,
    BOTTOM
} AKVerticalAlignment;

@interface AKIconButton : UIButton
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIFont *fontForText;
@property (nonatomic, strong) UIImage *icon;
@property (nonatomic) UIViewContentMode contentModeForIcon;
@property (nonatomic) BOOL overlaps;
@property (nonatomic) AKHorizontalAlignment horizontalAlignment;
@property (nonatomic) AKVerticalAlignment verticalAlignment;
@end