//
//  ViewController.h
//  yql-ios
//
//  Created by Guilherme Chapiewski on 10/19/12.
//  Copyright (c) 2012 Guilherme Chapiewski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextView *QueryTextView;
@property (nonatomic, retain) IBOutlet UITextView *ResultsTextView;

-(IBAction)Run_OnClick:(id)sender;

@end
