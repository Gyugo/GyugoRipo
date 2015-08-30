//
//  ViewControllerDetail.h
//  Test
//
//  Created by Viktor on 30.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerDetail : UIViewController

@property (strong, nonatomic) NSDate * eventDate;
@property (strong, nonatomic) NSString * eventInfo;
@property (assign, nonatomic) BOOL isDetail;

@end
