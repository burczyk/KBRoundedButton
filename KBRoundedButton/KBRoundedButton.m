//
//  KBRoundedButton.m
//  KBRoundedButton
//
//  Created by Kamil Burczyk on 23.07.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "KBRoundedButton.h"
#import "UIImage+Color.h"

@interface KBRoundedButton ()

@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;
@property (nonatomic, strong) NSString *originalTitle;
@property (nonatomic, strong) UIView *blackView;


@end

@implementation KBRoundedButton

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    [self addObserver:self forKeyPath:@"center" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"center"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if([keyPath isEqualToString:@"center"])
    {
        if (_shadowEnabled && !self.hidden) [self addBottomShadow];
    }
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self initializeColorsAndCorners];
}

#pragma mark - Colors

/**
 *  Sets the colors for provided button states for both background colors and title colors.
 *  Background color is implemented as 1x1 image of given color which is set as backgroundImage
 *  of button. It has cornerRadius parameter set to half of button's height and clipsToBounds
 *  property set to YES so it doesn't draw outside.
 */
- (void)initializeColorsAndCorners
{
    if (_backgroundColorForStateNormal) [self setBackgroundImage:[UIImage imageWithColor:_backgroundColorForStateNormal andSize:CGSizeMake(1, 1)] forState:UIControlStateNormal];
    if (_backgroundColorForStateSelected) [self setBackgroundImage:[UIImage imageWithColor:_backgroundColorForStateSelected andSize:CGSizeMake(1, 1)] forState:UIControlStateSelected];
    if (_backgroundColorForStateHighlighted) [self setBackgroundImage:[UIImage imageWithColor:_backgroundColorForStateHighlighted andSize:CGSizeMake(1, 1)] forState:UIControlStateHighlighted];
    if (_backgroundColorForStateSelectedAndHighlighted) [self setBackgroundImage:[UIImage imageWithColor:_backgroundColorForStateSelectedAndHighlighted andSize:CGSizeMake(1, 1)] forState:(UIControlStateSelected | UIControlStateHighlighted)];
    if (_backgroundColorForStateDisabled) [self setBackgroundImage:[UIImage imageWithColor:_backgroundColorForStateDisabled andSize:CGSizeMake(1, 1)] forState:UIControlStateDisabled];
    
    if (_titleColorForStateNormal) [self setTitleColor:_titleColorForStateNormal forState:UIControlStateNormal];
    if (_titleColorForStateSelected) [self setTitleColor:_titleColorForStateSelected forState:UIControlStateSelected];
    if (_titleColorForStateHighlighted) [self setTitleColor:_titleColorForStateHighlighted forState:UIControlStateHighlighted];
    if (_titleColorForStateSelectedAndHighlighted) [self setTitleColor:_titleColorForStateSelectedAndHighlighted forState:(UIControlStateSelected | UIControlStateHighlighted)];
    if (_titleColorForStateDisabled) [self setTitleColor:_titleColorForStateDisabled forState:UIControlStateDisabled];
    
    self.layer.cornerRadius = self.frame.size.height/2;
    self.clipsToBounds = YES;
    self.tintColor = [UIColor clearColor];
}

#pragma mark - Shadow

/**
 *  Adds bottom shadow as a subview of parent. Due to the fact that original button 
 *  sets .clipsToBounds property to YES it's not possible to use standard .layer.shadow* properties.
 *  New view simulating shadow is created and is inserted below button in view hierarchy.
 */
- (void)addBottomShadow
{
    [self removeBottomShadow];
    
    self.blackView = [[UIView alloc] initWithFrame:self.bounds];
    self.blackView.backgroundColor = [UIColor clearColor];
    
    self.blackView.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.frame cornerRadius:self.frame.size.height/2].CGPath;
    self.blackView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.blackView.layer.shadowRadius = 3;
    self.blackView.layer.shadowOffset = CGSizeMake(0, 5);
    self.blackView.layer.shadowOpacity = .25;
    self.blackView.layer.cornerRadius = self.frame.size.height/2;
    
    [self.superview insertSubview:self.blackView belowSubview:self];
}

/**
 *  Removes shadow if exists.
 */
- (void)removeBottomShadow
{
    if (self.blackView) {
        [self.blackView removeFromSuperview];
    }
}

#pragma mark - Layout

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (_shadowEnabled && !self.hidden) [self addBottomShadow];
}

/**
 *  Displays UIActivityIndicator in the center of button when button is working
 *
 *  @param working bool value
 */
- (void) setWorking:(BOOL)working {
    if (working) {
        if (_activityIndicator == nil) {
            _activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
            _activityIndicator.hidesWhenStopped = YES;
            
            [self addSubview:_activityIndicator];
            _activityIndicator.translatesAutoresizingMaskIntoConstraints = NO;
            [self addConstraint:[NSLayoutConstraint constraintWithItem:_activityIndicator attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:_activityIndicator attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
        }
        
        _originalTitle = [self titleForState:UIControlStateNormal];
        [self setTitle:@"" forState:UIControlStateNormal];
        
        [_activityIndicator startAnimating];
    } else {
        [_activityIndicator stopAnimating];
        [self setTitle:_originalTitle forState:UIControlStateNormal];
    }
}

/**
 *  Overridden method for hiding and restoring button with shadow.
 *
 *  @param hidden bool value
 */
- (void)setHidden:(BOOL)hidden {
    [super setHidden:hidden];
    if (_shadowEnabled) {
        if (hidden) {
            [self removeBottomShadow];
        } else {
            [self addBottomShadow];
        }
    }
}

@end
