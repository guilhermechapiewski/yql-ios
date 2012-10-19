//
//  ViewController.h
//  yql-ios
//
//  Created by Guilherme Chapiewski on 10/19/12.
//  Copyright (c) 2012 Guilherme Chapiewski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YQL.h"

@interface ViewController : UIViewController {
    YQL *yql;
}

@property (nonatomic, retain) IBOutlet UITextView *QueryTextView;
@property (nonatomic, retain) IBOutlet UITextView *ResultsTextView;
@property (strong, nonatomic) YQL *yql;

-(IBAction)Run_OnClick:(id)sender;

@end
