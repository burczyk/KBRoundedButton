//
//  KBRoundedButton.h
//  Quicklii
//
//  Created by Kamil Burczyk on 23.07.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBRoundedButton : UIButton

@property (nonatomic, assign) BOOL shadowEnabled;
@property (nonatomic, assign) BOOL working;

@property (nonatomic, strong) UIColor *backgroundColorForStateNormal;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelected;
@property (nonatomic, strong) UIColor *backgroundColorForStateHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateDisabled;

@property (nonatomic, strong) UIColor *titleColorForStateNormal;
@property (nonatomic, strong) UIColor *titleColorForStateSelected;
@property (nonatomic, strong) UIColor *titleColorForStateHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateDisabled;

@end
