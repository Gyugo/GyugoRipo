//
//  Board.h
//  Lesson2HW
//
//  Created by Viktor on 16.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "UIColor+HexColor.h"

@interface Board : UIView

- (void) creationMainViewBoard: (UIView*) view; //Основное поле
- (void) creationBoardCells: (UIView*) view; //Ячейки доски
- (void) creationChar: (UIView *) view;
- (void) creationNumber: (UIView *) view;

@end
