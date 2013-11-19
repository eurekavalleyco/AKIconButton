//
//  AKIconButtonViewController.m
//  AKIconButton
//
//  Created by Ken M. Haggerty on 11/13/13.
//  Copyright (c) 2013 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "AKIconButtonViewController.h"
#import "AKDebuggerRules_AKIconButton.h"
#import "AKIconButton.h"

#pragma mark - // DEFINITIONS (Private) //

#define EXAMPLE_ICON [UIImage imageNamed:@"checkboxChecked.png"]
#define TEXT_COLOR [UIColor whiteColor]
#define OVERLAPS NO

@interface AKIconButtonViewController ()
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

@interface AKIconButtonViewController ()

@end

@implementation AKIconButtonViewController

#pragma mark - // SETTERS AND GETTERS //

#pragma mark - // INITS AND LOADS //

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
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

- (void)viewDidLoad
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
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
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    if ([AKDebugger printForMethod:METHOD_NAME logType:AKMethodName methodType:AKSetup rules:RULES_CLASS]) NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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