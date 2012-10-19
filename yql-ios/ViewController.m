//
//  ViewController.m
//  yql-ios
//
//  Created by Guilherme Chapiewski on 10/19/12.
//  Copyright (c) 2012 Guilherme Chapiewski. All rights reserved.
//

#import "ViewController.h"

#define QUERY_PREFIX @"http://query.yahooapis.com/v1/public/yql?q="
#define QUERY_SUFFIX @"&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="

@interface ViewController ()

@end

@implementation ViewController
@synthesize QueryTextView;
@synthesize ResultsTextView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backgroundTouched:(id)sender {
    [QueryTextView resignFirstResponder];
    [ResultsTextView resignFirstResponder];
}

-(IBAction)Run_OnClick:(id)sender {
    [sender resignFirstResponder];
    
    NSString *query = [NSString stringWithFormat:@"%@%@%@", QUERY_PREFIX, [QueryTextView.text stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding], QUERY_SUFFIX];
    
    NSLog(@"Request URL: %@", query);
    
    NSData *jsonData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:query] encoding:NSUTF8StringEncoding error:nil] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *results = jsonData ? [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error] : nil;
    if (error) NSLog(@"[%@ %@] JSON error: %@", NSStringFromClass([self class]), NSStringFromSelector(_cmd), error.localizedDescription);
    
    NSLog(@"Results: %@", [results valueForKeyPath:@"query.results"]);
    
    // lame :(
    ResultsTextView.text = [NSString stringWithFormat:@"%@", [results valueForKeyPath:@"query.results"]];
}

@end
