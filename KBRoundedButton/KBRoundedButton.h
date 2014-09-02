//
//  KBRoundedButton.h
//  KBRoundedButton
//
//  Created by Kamil Burczyk on 23.07.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBRoundedButton : UIButton

/**
 *  Enables shadow below button. See `- (void)addBottomShadow` method for specific dimensions.
 */
@property (nonatomic, assign) BOOL shadowEnabled;

/**
 *  Setting flag to YES hides button's title and shows UIActivityIndicator in the center.
 *  Setting flag to NO restores original title.
 */
@property (nonatomic, assign) BOOL working;

/**
 *  Colors for background. Can be set via User Defined Runtime Attributes directly in Interface Builder.
 */
@property (nonatomic, strong) UIColor *backgroundColorForStateNormal;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelected;
@property (nonatomic, strong) UIColor *backgroundColorForStateHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateDisabled;

/**
 *  Colors for title. Can be set in Interface Builder.
 */
@property (nonatomic, strong) UIColor *titleColorForStateNormal;
@property (nonatomic, strong) UIColor *titleColorForStateSelected;
@property (nonatomic, strong) UIColor *titleColorForStateHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateDisabled;

@end
