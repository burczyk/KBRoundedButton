//
//  UIImage+Color.h
//  KBRoundedButton
//
//  Created by Kamil Burczyk on 23.07.2014.
//  Copyright (c) 2014 Kamil Burczyk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

/**
 *  Creates and returns UIImage instance with selected color and size
 *
 *  @param color selected color
 *  @param size  selected size
 *
 *  @return UIImage for given parameters
 */
+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size;

@end
