//
//  Animathion.h
//  Lesson4HW
//
//  Created by Viktor on 25.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animathion : NSObject

+ (void) animationAlphaLabel: (UIView*) label alpha: (CGFloat) alpha;

+ (void)animateTransformView:(UIView*)view withScaleX:(CGFloat)scaleX
                  withScaleY:(CGFloat)scaleY
                      move_X:(CGFloat)moveX
                      move_Y:(CGFloat)moveY
                       alpha:(CGFloat)alpha
                       delay:(CGFloat)delay;

+ (void) animateColor: (UIView*) view color: (UIColor*) color;

+ (void) animateLabel: (UILabel*) label textColor: (UIColor*) color;


+ (void) animateLayer: (UIView*) view cornerRadius: (CGFloat) radius;

@end
