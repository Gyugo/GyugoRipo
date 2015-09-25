//
//  CustomAnatation.m
//  Lesson3HW
//
//  Created by Viktor on 21.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CustomAnatation.h"

@implementation CustomAnatation

- (instancetype)initWithLatitude: (double) latitude andLongitude: (double) longitude
{
    self = [super init];
    if (self) {
        _coordinate.latitude = latitude;
        _coordinate.longitude = longitude;
    }
    return self;
}

@end
