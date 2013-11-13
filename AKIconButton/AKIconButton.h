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
    TOP = 1,
    MIDDLE,
    BOTTOM
} AKIconButtonLabelPosition;

@interface AKIconButton : UIButton
@property (nonatomic) AKIconButtonLabelPosition labelPosition;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIImage *icon;
@end