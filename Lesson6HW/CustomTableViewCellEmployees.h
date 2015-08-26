//
//  CustomTableViewCellEmployees.h
//  Lesson5HW
//
//  Created by Viktor on 25.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCellEmployees : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *FaceView;

@property (weak, nonatomic) IBOutlet UILabel *LablePosition;

@property (weak, nonatomic) IBOutlet UILabel *LableName;

@property (weak, nonatomic) IBOutlet UILabel *LableHobby;

@end
