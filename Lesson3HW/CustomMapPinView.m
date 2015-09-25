//
//  CustomMapPinView.m
//  Lesson3HW
//
//  Created by Viktor on 21.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CustomMapPinView.h"

@implementation CustomMapPinView

- (instancetype)initWithImage
{
    self = [super init];
    if (self) {
        
        
        self.image = [UIImage imageNamed:@"clear.png"];
        
        UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(40.f, - 5.f, 35.f, 35.f)];
        imageView.image = [UIImage imageNamed:@"map_pin_red.png"];
        
        UIView * testView = [[UIView alloc] initWithFrame:CGRectMake(70.f, -30.f, 100.f, 20.f)];
        testView.backgroundColor = [UIColor clearColor];
        testView.layer.borderColor = [UIColor blackColor].CGColor;
        testView.layer.borderWidth = 1.f;
        testView.layer.cornerRadius = 5.f;
        testView.tag = 25;
        testView.alpha = 0.f;
        
        UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(70.f, -30.f, 100.f, 20.f)];
        label.text = @"Sochi";
        label.textColor = [UIColor redColor];
        label.alpha = 0.f;
        [label setTextAlignment:UITextAlignmentCenter];
        label.tag = 25;
        

        
        [self addSubview:imageView];
        [self addSubview:testView];
        [self addSubview:label];

        

    }
    return self;
}

@end
