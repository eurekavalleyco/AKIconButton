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
#define OVERLAPS YES

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
    
    [self.topLeft setText:@"Top Left"];
    [self.topLeft setTextColor:TEXT_COLOR];
    [self.topLeft setHorizontalAlignment:LEFT];
    [self.topLeft setVerticalAlignment:TOP];
    [self.topLeft setIcon:EXAMPLE_ICON];
    [self.topLeft setContentModeForIcon:UIViewContentModeCenter];
    [self.topLeft setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.topLeft.text);
    
    [self.topCenter setText:@"Top Center"];
    [self.topCenter setTextColor:TEXT_COLOR];
    [self.topCenter setHorizontalAlignment:CENTER];
    [self.topCenter setVerticalAlignment:TOP];
    [self.topCenter setIcon:EXAMPLE_ICON];
    [self.topCenter setContentModeForIcon:UIViewContentModeCenter];
    [self.topCenter setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.topCenter.text);
    
    [self.topRight setText:@"Top Right"];
    [self.topRight setTextColor:TEXT_COLOR];
    [self.topRight setVerticalAlignment:TOP];
    [self.topRight setHorizontalAlignment:RIGHT];
    [self.topRight setIcon:EXAMPLE_ICON];
    [self.topRight setContentModeForIcon:UIViewContentModeCenter];
    [self.topRight setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.topRight.text);
    
    [self.middleLeft setText:@"Middle Left"];
    [self.middleLeft setTextColor:TEXT_COLOR];
    [self.middleLeft setVerticalAlignment:MIDDLE];
    [self.middleLeft setHorizontalAlignment:LEFT];
    [self.middleLeft setIcon:EXAMPLE_ICON];
    [self.middleLeft setContentModeForIcon:UIViewContentModeCenter];
    [self.middleLeft setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.middleLeft.text);
    
    [self.middleCenter setText:@"Middle Center"];
    [self.middleCenter setTextColor:TEXT_COLOR];
    [self.middleCenter setVerticalAlignment:MIDDLE];
    [self.middleCenter setHorizontalAlignment:CENTER];
    [self.middleCenter setIcon:EXAMPLE_ICON];
    [self.middleCenter setContentModeForIcon:UIViewContentModeCenter];
    [self.middleCenter setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.middleCenter.text);
    
    [self.middleRight setText:@"Middle Right"];
    [self.middleRight setTextColor:TEXT_COLOR];
    [self.middleRight setVerticalAlignment:MIDDLE];
    [self.middleRight setHorizontalAlignment:RIGHT];
    [self.middleRight setIcon:EXAMPLE_ICON];
    [self.middleRight setContentModeForIcon:UIViewContentModeCenter];
    [self.middleRight setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.middleRight.text);
    
    [self.bottomLeft setText:@"Bottom Left"];
    [self.bottomLeft setTextColor:TEXT_COLOR];
    [self.bottomLeft setVerticalAlignment:BOTTOM];
    [self.bottomLeft setHorizontalAlignment:LEFT];
    [self.bottomLeft setIcon:EXAMPLE_ICON];
    [self.bottomLeft setContentModeForIcon:UIViewContentModeCenter];
    [self.bottomLeft setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.bottomLeft.text);
    
    [self.bottomCenter setText:@"Bottom Center"];
    [self.bottomCenter setTextColor:TEXT_COLOR];
    [self.bottomCenter setVerticalAlignment:BOTTOM];
    [self.bottomCenter setHorizontalAlignment:CENTER];
    [self.bottomCenter setIcon:EXAMPLE_ICON];
    [self.bottomCenter setContentModeForIcon:UIViewContentModeCenter];
    [self.bottomCenter setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.bottomCenter.text);
    
    [self.bottomRight setText:@"Bottom Right"];
    [self.bottomRight setTextColor:TEXT_COLOR];
    [self.bottomRight setVerticalAlignment:BOTTOM];
    [self.bottomRight setHorizontalAlignment:RIGHT];
    [self.bottomRight setIcon:EXAMPLE_ICON];
    [self.bottomRight setContentModeForIcon:UIViewContentModeCenter];
    [self.bottomRight setOverlaps:OVERLAPS];
    NSLog(@"[TEST] text = %@", self.bottomRight.text);
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