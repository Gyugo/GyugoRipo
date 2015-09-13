//
//  ViewController.h
//  Lesson1HW
//
//  Created by Viktor on 12.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//свойства кнопки Круг--------------------------------------
@property (weak, nonatomic) IBOutlet UIButton *buttonRound;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonRound;


//свойства кнопки Квадрат-----------------------------------
@property (weak, nonatomic) IBOutlet UIButton *buttonSquare;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonSquare;

//свойства кнопки Круг2--------------------------------------
@property (weak, nonatomic) IBOutlet UIButton *buttonRound2;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonRound2;


//свойства кнопки Квадрат2------------------------------------
@property (weak, nonatomic) IBOutlet UIButton *buttonSquare2;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonSquare2;


@property (weak, nonatomic) IBOutlet UIView *viewWork;

@end

