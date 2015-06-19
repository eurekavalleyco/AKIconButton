//
//  ViewController.m
//  AKIconButton
//
//  Created by Ken M. Haggerty on 11/13/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "ViewController.h"
#import "AKDebugger.h"
#import "AKGenerics.h"
#import "AKIconButton.h"

#pragma mark - // DEFINITIONS (Private) //

#define EXAMPLE_ICON [UIImage imageNamed:@"checkboxChecked.png"]
#define TEXT_COLOR [UIColor whiteColor]
#define OVERLAPS NO

@interface ViewController ()
@property (nonatomic, strong) IBOutlet AKIconButton *topLeft;
@property (nonatomic, strong) IBOutlet AKIconButton *topCenter;
@property (nonatomic, strong) IBOutlet AKIconButton *topRight;
@property (nonatomic, strong) IBOutlet AKIconButton *middleLeft;
@property (nonatomic, strong) IBOutlet AKIconButton *middleCenter;
@property (nonatomic, strong) IBOutlet AKIconButton *middleRight;
@property (nonatomic, strong) IBOutlet AKIconButton *bottomLeft;
@property (nonatomic, strong) IBOutlet AKIconButton *bottomCenter;
@property (nonatomic, strong) IBOutlet AKIconButton *bottomRight;
- (void)setup;
- (void)teardown;
@end

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (!self)
    {
        [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeCritical methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:[NSString stringWithFormat:@"Could not initialize %@", stringFromVariable(self)]];
        return nil;
    }
    [self setup];
    return self;
}

- (void)awakeFromNib
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super awakeFromNib];
    [self setup];
}

- (void)viewDidLoad
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewWillAppear:animated];
    
    [self.topLeft setIcon:EXAMPLE_ICON];
    [self.topLeft setOverlaps:OVERLAPS];
    
    [self.topCenter setIcon:EXAMPLE_ICON];
    [self.topCenter setOverlaps:OVERLAPS];
    
    [self.topRight setIcon:EXAMPLE_ICON];
    [self.topRight setOverlaps:OVERLAPS];
    
    [self.middleLeft setIcon:EXAMPLE_ICON];
    [self.middleLeft setOverlaps:OVERLAPS];
    
    [self.middleCenter setIcon:EXAMPLE_ICON];
    [self.middleCenter setOverlaps:OVERLAPS];
    
    [self.middleRight setIcon:EXAMPLE_ICON];
    [self.middleRight setOverlaps:OVERLAPS];
    
    [self.bottomLeft setIcon:EXAMPLE_ICON];
    [self.bottomLeft setOverlaps:OVERLAPS];
    
    [self.bottomCenter setIcon:EXAMPLE_ICON];
    [self.bottomCenter setOverlaps:OVERLAPS];
    
    [self.bottomRight setIcon:EXAMPLE_ICON];
    [self.bottomRight setOverlaps:OVERLAPS];
}

- (void)viewDidAppear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super didReceiveMemoryWarning];
}

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
}

- (void)teardown
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
}

@end