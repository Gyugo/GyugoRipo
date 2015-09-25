//
//  CustomAnatation.h
//  Lesson3HW
//
//  Created by Viktor on 21.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CustomAnatation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (instancetype)initWithLatitude: (double) latitude andLongitude: (double) longitude;

@property (nonatomic, strong) NSDictionary * info;

@end
