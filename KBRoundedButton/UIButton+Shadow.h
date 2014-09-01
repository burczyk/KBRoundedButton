//
//  UIButton+Shadow.h
//  Quicklii
//
//  Created by Kamil Burczyk on 17.07.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Shadow)

@property (nonatomic, strong) UIView *blackView;

- (void)addBottomShadow;
- (void)removeBottomShadow;

@end
