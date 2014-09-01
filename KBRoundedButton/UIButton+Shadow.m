//
//  UIButton+Shadow.m
//  Quicklii
//
//  Created by Kamil Burczyk on 17.07.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "UIButton+Shadow.h"

@implementation UIButton (Shadow)

@dynamic blackView;

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

- (void)removeBottomShadow
{
    if (self.blackView) {
        [self.blackView removeFromSuperview];
    }
}

@end
