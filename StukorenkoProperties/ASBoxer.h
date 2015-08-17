//
//  ASBoxer.h
//  StukorenkoProperties
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ASBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;



- (NSInteger) howOldAreYou;

@end
