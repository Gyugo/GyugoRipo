//
//  Animation.m
//  ToDo List
//
//  Created by Viktor on 07.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "Animation.h"


@implementation Animation

- (void) move_PlaceHoldr_UP: (UILabel*)label Points: (int) point
                  TextColor: (UIColor*) color {
    
    CGRect newFrame = [label frame];
    newFrame.origin.y = label.frame.origin.y + point;
    
    [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionTransitionNone animations:^{
        label.frame = newFrame;
        
        int64_t delayInSeconds = 10;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_MSEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            CATransition* animation = [CATransition animation];
            [animation setType:kCATransitionFade];
            [animation setDuration:0.2f];
            [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
            [animation setFillMode:kCAFillModeBoth];
            
            [label.layer addAnimation:animation forKey:@"Fade"];
            
            label.textColor = color;
            
            
        });
        
    } completion:^(BOOL finished){
        
    }];
}

@end
