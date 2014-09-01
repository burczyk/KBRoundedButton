//
//  ViewController.m
//  KBRoundedButtonExample
//
//  Created by Kamil Burczyk on 01.09.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "ViewController.h"
#import "KBRoundedButton.h"
@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)buttonClicked:(KBRoundedButton *)sender {
    sender.selected = !sender.selected;
}

- (IBAction)loginButtonPushed:(KBRoundedButton *)sender {
    sender.working = YES;
    sender.enabled = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        sender.working = NO;
        sender.enabled = YES;
    });
}
@end
