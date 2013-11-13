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

#define DEFAULT_LABEL_POSITION TOP
#define DEFAULT_FONT [UIFont systemFontWithSize:12.0];

@interface AKIconButton ()
@property (nonatomic, strong) UILabel *buttonLabel;
- (void)setup;
- (void)teardown;
@end

@implementation AKIconButton

#pragma mark - // SETTERS AND GETTERS //

@synthesize labelPosition = _labelPosition;
@synthesize text = _text;
@synthesize icon = _icon;
@synthesize buttonLabel = _buttonLabel;

- (void)setLabelPosition:(AKIconButtonLabelPosition)labelPosition
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    switch (labelPosition) {
        case TOP:
            
            break;
        case MIDDLE:
            
            break;
        case BOTTOM:
            
            break;
    }
    _labelPosition = labelPosition;
}

- (UILabel *)buttonLabel
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKGetter rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    if (!_buttonLabel)
    {
        _buttonLabel = [[UILabel alloc] init];
        switch (self.labelPosition) {
            case TOP:
                [_buttonLabel setFrame:CGRectMake(0.0, 0.0, self.bounds.size.width, 0.0)];
                [_buttonLabel setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin)];
                break;
            case MIDDLE:
                [_buttonLabel setFrame:CGRectMake(0.0, self.bounds.size.height/2.0, self.bounds.size.width, 0.0)];
                [_buttonLabel setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin)];
                break;
            case BOTTOM:
                [_buttonLabel setFrame:CGRectMake(0.0, self.bounds.size.height, self.bounds.size.width, 0.0)];
                [_buttonLabel setAutoresizingMask:(UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin)];
                break;
        }
    }
    return _buttonLabel;
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

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)teardown
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end