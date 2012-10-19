//
//  ViewController.m
//  yql-ios
//
//  Created by Guilherme Chapiewski on 10/19/12.
//  Copyright (c) 2012 Guilherme Chapiewski. All rights reserved.
//

#import "ViewController.h"
#import "YQL.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize QueryTextView;
@synthesize ResultsTextView;
@synthesize yql;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Init YQL
	yql = [[YQL alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)Run_OnClick:(id)sender {
    NSString *results = [yql query:QueryTextView.text];
    ResultsTextView.text = results;
}

@end
