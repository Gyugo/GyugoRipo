//
//  ViewControllerDetailToDoList.h
//  ToDo List
//
//  Created by Viktor on 06.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewControllerDetailToDoList : UIViewController {
    
    BOOL isTextChoosen;
    
}
@property (weak, nonatomic) IBOutlet UILabel *labelButtonBack;
@property (strong, nonatomic) IBOutlet UIView *viewMainDetail;
@property (strong, nonatomic) NSDate * eventDate;
@property (strong, nonatomic) NSString * eventInfo;
@property (nonatomic, assign) BOOL isDetail;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonSave;
- (IBAction)actionTextField:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *lableTextField;

@end
