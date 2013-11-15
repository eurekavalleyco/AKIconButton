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
#import "AKDebuggerRules_AKIconButton.h"

#pragma mark - // DEFINITIONS (Private) //

#define DEFAULT_TEXT @""
#define DEFAULT_TEXT_COLOR [UIColor blackColor]
#define DEFAULT_FONT [UIFont systemFontOfSize:12.0]
#define DEFAULT_ICON nil
#define DEFAULT_OVERLAPS NO
#define DEFAULT_HORIZONTAL_ALIGNMENT CENTER
#define DEFAULT_VERTICAL_ALIGNMENT BOTTOM

@interface AKIconButton ()
@property (nonatomic, strong) UILabel *labelForButton;
@property (nonatomic, strong) UIImageView *imageViewForIcon;
- (void)setup;
- (void)teardown;
- (void)setText:(NSString *)text forButton:(UIButton *)button;
- (void)setImage:(UIImage *)image forButton:(UIButton *)button;
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
@synthesize labelForButton = _labelForButton;
@synthesize imageViewForIcon = _imageViewForIcon;

- (void)setText:(NSString *)text
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (![_text isEqualToString:text])
    {
        _text = text;
        [self.labelForButton setText:text];
        [self layoutSubviews];
    }
}

- (NSString *)text
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_text) _text = DEFAULT_TEXT;
    return _text;
}

- (void)setTextColor:(UIColor *)textColor
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (![_textColor isEqual:textColor])
    {
        _textColor = textColor;
        [self.labelForButton setTextColor:textColor];
    }
}

- (UIColor *)textColor
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_textColor) _textColor = DEFAULT_TEXT_COLOR;
    return _textColor;
}

- (void)setFontForText:(UIFont *)fontForText
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (![_fontForText isEqual:fontForText])
    {
        _fontForText = fontForText;
        [self.labelForButton setFont:self.fontForText];
        [self layoutSubviews];
    }
}

- (UIFont *)fontForText
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_fontForText) _fontForText = DEFAULT_FONT;
    return _fontForText;
}

- (void)setIcon:(UIImage *)icon
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    _icon = icon;
    [self.imageViewForIcon setImage:icon];
}

- (UIImage *)icon
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_icon) _icon = DEFAULT_ICON;
    return _icon;
}

- (void)setContentModeForIcon:(UIViewContentMode)contentModeForIcon
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (self.imageViewForIcon.contentMode != contentModeForIcon)
    {
        _contentModeForIcon = contentModeForIcon;
        [self.imageViewForIcon setContentMode:contentModeForIcon];
    }
}

- (void)setOverlaps:(BOOL)overlaps
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (_overlaps != overlaps)
    {
        _overlaps = overlaps;
        [self layoutSubviews];
    }
}

- (void)setHorizontalAlignment:(AKHorizontalAlignment)horizontalAlignment
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (_horizontalAlignment != horizontalAlignment)
    {
        _horizontalAlignment = horizontalAlignment;
        [self layoutSubviews];
    }
}

- (void)setVerticalAlignment:(AKVerticalAlignment)verticalAlignment
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (_verticalAlignment != verticalAlignment)
    {
        _verticalAlignment = verticalAlignment;
        [self layoutSubviews];
    }
}

- (UILabel *)labelForButton
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
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
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
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
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super awakeFromNib];
    [self setup];
}

- (void)dealloc
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [self teardown];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

- (void)layoutSubviews
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKUnspecified rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (![self.subviews containsObject:self.imageViewForIcon]) [self addSubview:self.imageViewForIcon];
    if (![self.subviews containsObject:self.labelForButton]) [self addSubview:self.labelForButton];
    switch (self.horizontalAlignment) {
        case LEFT:
            [self.labelForButton setTextAlignment:NSTextAlignmentLeft];
            break;
        case CENTER:
            [self.labelForButton setTextAlignment:NSTextAlignmentCenter];
            break;
        case RIGHT:
            [self.labelForButton setTextAlignment:NSTextAlignmentRight];
            break;
        case JUSTIFIED:
            [self.labelForButton setTextAlignment:NSTextAlignmentJustified];
            break;
    }
    [self.labelForButton sizeToFit];
    CGFloat labelHeight = self.labelForButton.frame.size.height;
    switch (self.verticalAlignment) {
        case TOP:
            [self.labelForButton setFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin)];
            break;
        case MIDDLE:
            [self.labelForButton setFrame:CGRectMake(0.0, (self.bounds.size.height-labelHeight)/2.0, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)];
            break;
        case BOTTOM:
            [self.labelForButton setFrame:CGRectMake(0.0, self.bounds.size.height-labelHeight, self.bounds.size.width, labelHeight)];
            [self.labelForButton setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin)];
            break;
    }
    if (self.overlaps)
    {
        [self.imageViewForIcon setFrame:self.bounds];
    }
    else
    {
        switch (self.verticalAlignment) {
            case TOP:
                [self.imageViewForIcon setFrame:CGRectMake(0.0, self.labelForButton.bounds.size.height, self.bounds.size.width, self.bounds.size.height-self.labelForButton.frame.size.height)];
                break;
            case MIDDLE:
                [self setOverlaps:YES];
                break;
            case BOTTOM:
                [self.imageViewForIcon setFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, self.bounds.size.height-self.labelForButton.frame.size.height)];
                break;
        }
    }
    [self bringSubviewToFront:self.labelForButton];
}

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // DEFAULTS //
    
    [self setOverlaps:DEFAULT_OVERLAPS];
    [self setHorizontalAlignment:DEFAULT_HORIZONTAL_ALIGNMENT];
    [self setVerticalAlignment:DEFAULT_VERTICAL_ALIGNMENT];
    
    // VIEW HIERARCHY //
    
    if (![self.subviews containsObject:self.imageViewForIcon]) [self addSubview:self.imageViewForIcon];
    if (![self.subviews containsObject:self.labelForButton]) [self addSubview:self.labelForButton];
    [self bringSubviewToFront:self.labelForButton];
    
    // OTHER //
    
    [self setText:@"" forButton:self];
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)setText:(NSString *)text forButton:(UIButton *)button
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (button)
    {
        [button setTitle:text forState:UIControlStateNormal];
        [button setTitle:text forState:UIControlStateSelected];
        [button setTitle:text forState:UIControlStateHighlighted];
    }
}

- (void)setImage:(UIImage *)image forButton:(UIButton *)button
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (button)
    {
        [button setImage:image forState:UIControlStateNormal];
        [button setImage:image forState:UIControlStateSelected];
        [button setImage:image forState:UIControlStateHighlighted];
    }
}

@end