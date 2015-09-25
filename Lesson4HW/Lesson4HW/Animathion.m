//
//  Animathion.m
//  Lesson4HW
//
//  Created by Viktor on 25.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "Animathion.h"

@implementation Animathion

//Анимация label------------------------------------------------
+ (void) animateLabel: (UILabel*) label textColor: (UIColor*) color {
    
    [UILabel animateWithDuration:0.35f animations:^{
        
        label.textColor = color;
        
    }];
    
}


//Анимация беграунда---------------------------------------------
+ (void) animateColor: (UIView*) view color: (UIColor*) color {
    
    [UIView animateWithDuration:0.35 animations:^{
        
        view.backgroundColor = color;
    }];
    
}
//Анимация альфа------------------------------------------------
+ (void)animationAlphaLabel:(UIView*)label alpha:(CGFloat)alpha
{
    
    CATransition* animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.35f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFillMode:kCAFillModeBoth];
    
    [label.layer addAnimation:animation forKey:nil];
    
    label.alpha = alpha;
}
//Анимация размера и местоположения------------------------------
+ (void)animateTransformView:(UIView*)view withScaleX:(CGFloat)scaleX
                  withScaleY:(CGFloat)scaleY
                      move_X:(CGFloat)moveX
                      move_Y:(CGFloat)moveY
                       alpha:(CGFloat)alpha
                       delay:(CGFloat)delay
{
    
    [UIView animateWithDuration:0.3f
                          delay:0.f
                        options:0.f
                     animations:^{
                         
                         CGFloat transformX = 0.f;
                         CGFloat transformY = 0.f;
                         CGFloat transformScaleX = 0.f;
                         CGFloat transformScaleY = 0.f;
                         
                         transformX = moveX;
                         transformY = moveY;
                         transformScaleX = scaleX;
                         transformScaleY = scaleY;
                         
                         CGAffineTransform scaleT = CGAffineTransformMakeScale(scaleX, scaleY);
                         CGAffineTransform trans = CGAffineTransformMakeTranslation(transformX, transformY);
                         
                         CGAffineTransform resultTransform = CGAffineTransformConcat(trans, scaleT);
                         
                         view.transform = resultTransform;
                         view.alpha = alpha;
                         
                     }
                     completion:^(BOOL finished){
                         
                     }];
}
//анимация изменения зглаживания------------------------------------
+ (void) animateLayer: (UIView*) view cornerRadius: (CGFloat) radius {
    CATransition* animation = [CATransition animation];
    [animation setType:kCATransitionFade];
    [animation setDuration:0.35f];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setFillMode:kCAFillModeBoth];
    
    [view.layer addAnimation:animation forKey:nil];
    
    view.layer.cornerRadius = radius;
}

@end
