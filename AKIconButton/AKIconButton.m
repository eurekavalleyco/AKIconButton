//
//  AKIconButton.m
//  AKIconButton
//
//  Created by Ken M. Haggerty on 11/13/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "AKIconButton.h"
#import "AKDebugger.h"
#import "AKGenerics.h"

#pragma mark - // DEFINITIONS (Private) //

#define DEFAULT_TEXT self.currentTitle
#define DEFAULT_TEXT_COLOR self.currentTitleColor
#define DEFAULT_FONT self.titleLabel.font
#define DEFAULT_ICON self.imageView.image
#define DEFAULT_CONTENT_MODE UIViewContentModeCenter
#define DEFAULT_OVERLAPS NO
#define DEFAULT_HORIZONTAL_ALIGNMENT self.contentHorizontalAlignment
#define DEFAULT_VERTICAL_ALIGNMENT self.contentVerticalAlignment
#define DEFAULT_ADJUSTSFONTSIZETOFITWIDTH YES
#define DEFAULT_MINIMUM_SCALE_FACTOR 0
#define DEFAULT_NUMBEROFLINES 1

@interface AKIconButton ()
@property (nonatomic, strong) UILabel *labelForButton;
@property (nonatomic, strong) UIImageView *imageViewForIcon;
- (void)setup;
- (void)teardown;
@end

@implementation AKIconButton

#pragma mark - // SETTERS AND GETTERS //

@synthesize text = _text;
@synthesize textColor = _textColor;
@synthesize fontForText = _fontForText;
@synthesize icon = _icon;
@synthesize contentModeForIcon = _contentModeForIcon;
@synthesize overlaps = _overlaps;
@synthesize horizontalAlignment = _horizontalAlignment;
@synthesize verticalAlignment = _verticalAlignment;
@synthesize adjustsFontSizeToFitWidth = _adjustsFontSizeToFitWidth;
@synthesize minimumScaleFactorForLabel = _minimumScaleFactorForLabel;
@synthesize numberOfLinesForLabel = _numberOfLinesForLabel;
@synthesize labelForButton = _labelForButton;
@synthesize imageViewForIcon = _imageViewForIcon;

- (void)setText:(NSString *)text
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (![_text isEqualToString:text])
    {
        _text = text;
        [self.labelForButton setText:text];
        [self layoutSubviews];
    }
}

- (NSString *)text
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_text) _text = DEFAULT_TEXT;
    return _text;
}

- (void)setTextColor:(UIColor *)textColor
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (![_textColor isEqual:textColor])
    {
        _textColor = textColor;
        [self.labelForButton setTextColor:textColor];
    }
}

- (UIColor *)textColor
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_textColor) _textColor = DEFAULT_TEXT_COLOR;
    return _textColor;
}

- (void)setFontForText:(UIFont *)fontForText
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (![_fontForText isEqual:fontForText])
    {
        _fontForText = fontForText;
        [self.labelForButton setFont:self.fontForText];
        [self layoutSubviews];
    }
}

- (UIFont *)fontForText
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_fontForText) _fontForText = DEFAULT_FONT;
    return _fontForText;
}

- (void)setIcon:(UIImage *)icon
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    _icon = icon;
    [self.imageViewForIcon setImage:icon];
}

- (UIImage *)icon
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_icon) _icon = DEFAULT_ICON;
    return _icon;
}

- (void)setContentModeForIcon:(UIViewContentMode)contentModeForIcon
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (self.imageViewForIcon.contentMode != contentModeForIcon)
    {
        _contentModeForIcon = contentModeForIcon;
        [self.imageViewForIcon setContentMode:contentModeForIcon];
    }
}

- (void)setOverlaps:(BOOL)overlaps
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_overlaps != overlaps)
    {
        _overlaps = overlaps;
        [self layoutSubviews];
    }
}

- (void)setHorizontalAlignment:(UIControlContentHorizontalAlignment)horizontalAlignment
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_horizontalAlignment != horizontalAlignment)
    {
        _horizontalAlignment = horizontalAlignment;
        [self layoutSubviews];
    }
}

- (void)setVerticalAlignment:(UIControlContentVerticalAlignment)verticalAlignment
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_verticalAlignment != verticalAlignment)
    {
        _verticalAlignment = verticalAlignment;
        [self layoutSubviews];
    }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_adjustsFontSizeToFitWidth != adjustsFontSizeToFitWidth)
    {
        _adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        [self.labelForButton setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];
    }
}

- (void)setMinimumScaleFactorForLabel:(CGFloat)minimumScaleFactorForLabel
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_minimumScaleFactorForLabel != minimumScaleFactorForLabel)
    {
        _minimumScaleFactorForLabel = minimumScaleFactorForLabel;
        [self.labelForButton setMinimumScaleFactor:minimumScaleFactorForLabel];
        [self layoutSubviews];
    }
}

- (void)setNumberOfLinesForLabel:(NSInteger)numberOfLinesForLabel
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    if (_numberOfLinesForLabel != numberOfLinesForLabel)
    {
        _numberOfLinesForLabel = numberOfLinesForLabel;
        [self.labelForButton setNumberOfLines:numberOfLinesForLabel];
        [self layoutSubviews];
    }
}

- (UILabel *)labelForButton
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_labelForButton)
    {
        _labelForButton = [[UILabel alloc] init];
        [_labelForButton setBackgroundColor:[UIColor clearColor]];
        [_labelForButton setFont:self.fontForText];
        [_labelForButton setTextColor:self.textColor];
        [_labelForButton setLineBreakMode:NSLineBreakByTruncatingTail];
        [_labelForButton setText:self.text];
    }
    return _labelForButton;
}

- (UIImageView *)imageViewForIcon
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategory:nil message:nil];
    
    if (!_imageViewForIcon)
    {
        _imageViewForIcon = [[UIImageView alloc] initWithImage:self.icon];
        [_imageViewForIcon setBackgroundColor:[UIColor clearColor]];
        [_imageViewForIcon setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight)];
    }
    return _imageViewForIcon;
}

#pragma mark - // INITS AND LOADS //

- (id)initWithFrame:(CGRect)frame
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    [super awakeFromNib];
    [self setup];
}

- (void)dealloc
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

- (void)layoutSubviews
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeUnspecified customCategory:nil message:nil];
    
    if (![self.subviews containsObject:self.imageViewForIcon]) [self addSubview:self.imageViewForIcon];
    if (![self.subviews containsObject:self.labelForButton]) [self addSubview:self.labelForButton];
    switch (self.horizontalAlignment) {
        case UIControlContentHorizontalAlignmentLeft:
            [self.labelForButton setTextAlignment:NSTextAlignmentLeft];
            break;
        case UIControlContentHorizontalAlignmentCenter:
            [self.labelForButton setTextAlignment:NSTextAlignmentCenter];
            break;
        case UIControlContentHorizontalAlignmentRight:
            [self.labelForButton setTextAlignment:NSTextAlignmentRight];
            break;
        case UIControlContentHorizontalAlignmentFill:
            [self.labelForButton setTextAlignment:NSTextAlignmentJustified];
            break;
    }
    [self.labelForButton setAdjustsFontSizeToFitWidth:NO];
    [self.labelForButton sizeToFit];
    CGFloat labelHeight = self.labelForButton.frame.size.height;
    switch (self.verticalAlignment) {
        case UIControlContentVerticalAlignmentTop:
            [self.labelForButton setFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin)];
            break;
        case UIControlContentVerticalAlignmentBottom:
            [self.labelForButton setFrame:CGRectMake(0.0, self.bounds.size.height-labelHeight, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin)];
            break;
        default:
            [self.labelForButton setFrame:CGRectMake(0.0, (self.bounds.size.height-labelHeight)/2.0, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)];
            break;
    }
    [self.labelForButton setAdjustsFontSizeToFitWidth:self.adjustsFontSizeToFitWidth];
    if (self.overlaps)
    {
        [self.imageViewForIcon setFrame:self.bounds];
    }
    else
    {
        switch (self.verticalAlignment) {
            case UIControlContentVerticalAlignmentTop:
                [self.imageViewForIcon setFrame:CGRectMake(0.0, self.labelForButton.bounds.size.height, self.bounds.size.width, self.bounds.size.height-self.labelForButton.frame.size.height)];
                break;
            case UIControlContentVerticalAlignmentBottom:
                [self.imageViewForIcon setFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, self.bounds.size.height-self.labelForButton.frame.size.height)];
                break;
            default:
                [self setOverlaps:YES];
                break;
        }
    }
    [self bringSubviewToFront:self.labelForButton];
}

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
    
    // DEFAULTS //
    
    [self setContentModeForIcon:DEFAULT_CONTENT_MODE];
    [self setOverlaps:DEFAULT_OVERLAPS];
    [self setHorizontalAlignment:DEFAULT_HORIZONTAL_ALIGNMENT];
    [self setVerticalAlignment:DEFAULT_VERTICAL_ALIGNMENT];
    [self setAdjustsFontSizeToFitWidth:DEFAULT_ADJUSTSFONTSIZETOFITWIDTH];
    [self setMinimumScaleFactorForLabel:DEFAULT_MINIMUM_SCALE_FACTOR];
    [self setNumberOfLinesForLabel:DEFAULT_NUMBEROFLINES];
    
    // VIEW HIERARCHY //
    
    if (![self.subviews containsObject:self.imageViewForIcon]) [self addSubview:self.imageViewForIcon];
    if (![self.subviews containsObject:self.labelForButton]) [self addSubview:self.labelForButton];
    [self bringSubviewToFront:self.labelForButton];
    
    // OTHER //
    
    [AKGenerics setText:@"" forButton:self];
    [self setClipsToBounds:YES];
}

- (void)teardown
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategory:nil message:nil];
}

@end