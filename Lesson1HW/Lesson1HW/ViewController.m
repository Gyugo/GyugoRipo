//
//  ViewController.m
//  Lesson1HW
//
//  Created by Viktor on 12.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+HexColor.h"
#import "Macros.h"
#import "Animation.h"

@interface ViewController ()
@property (strong, nonatomic) UIFont* fontTextLabelButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //Своства MainView-----------------------------------------------------------------
    self.view.backgroundColor = [UIColor colorWithHexString:
                                             STANDART_MAIN_VIEW_BACKGROUN_COLOR];

    //Свойства кнопки buttonRound------------------------------------------------------
    self.buttonRound.backgroundColor = [UIColor colorWithHexString:
                                                    STANDART_BUTTON_BACKGROUND_COLOR];
    self.buttonRound.layer.borderColor = [UIColor colorWithHexString:
                                                      STANDART_LAYER_BORDER_COLOR_BUTTON]
                                             .CGColor;
    self.buttonRound.layer.borderWidth = 3.f;
    self.buttonRound.layer.cornerRadius = 10.f;
    [self.buttonRound addTarget:self
                         action:@selector(tapButtonRound)
               forControlEvents:UIControlEventTouchDown];
    [self.buttonRound addTarget:self
                         action:@selector(actionButtonRound)
               forControlEvents:UIControlEventTouchUpInside];

    //Свойства labelButtonRound---------------
    self.labelButtonRound.textColor = [UIColor colorWithHexString:
                                                   STANDART_TEXT_COLOR_LABEL_BUTTON];
    self.labelButtonRound.font = [UIFont fontWithName:
                                             STANDART_FONT_LABEL_TEXT_BUTTON
                                                 size:STANDART_SIZE_LABEL_TEXT_BUTTON];

    //Свойства кнопки buttonSquare---------------------------------------------------
    self.buttonSquare.backgroundColor = [UIColor colorWithHexString:
                                                     STANDART_BUTTON_BACKGROUND_COLOR];
    self.buttonSquare.layer.borderColor = [UIColor colorWithHexString:
                                                       STANDART_LAYER_BORDER_COLOR_BUTTON]
                                              .CGColor;
    self.buttonSquare.layer.borderWidth = 3.f;
    self.buttonSquare.layer.cornerRadius = 10.f;
    [self.buttonSquare addTarget:self
                          action:@selector(tapButtonSquare)
                forControlEvents:UIControlEventTouchDown];
    [self.buttonSquare addTarget:self
                          action:@selector(actionbuttonSquare)
                forControlEvents:UIControlEventTouchUpInside];

    //Свойства labelbuttonSquere-----------
    self.labelButtonSquare.textColor = [UIColor colorWithHexString:
                                                    STANDART_TEXT_COLOR_LABEL_BUTTON];
    self.labelButtonSquare.font = [UIFont fontWithName:
                                              STANDART_FONT_LABEL_TEXT_BUTTON
                                                  size:STANDART_SIZE_LABEL_TEXT_BUTTON];

    //Свойства кнопки buttonRound2-------------------------------------------------------
    self.buttonRound2.backgroundColor = [UIColor colorWithHexString:
                                                     STANDART_BUTTON_BACKGROUND_COLOR];
    self.buttonRound2.layer.borderColor = [UIColor colorWithHexString:
                                                       STANDART_LAYER_BORDER_COLOR_BUTTON]
                                              .CGColor;
    self.buttonRound2.layer.borderWidth = 3.f;
    self.buttonRound2.layer.cornerRadius = 10.f;
    [self.buttonRound2 addTarget:self
                          action:@selector(tapButtonRound2)
                forControlEvents:UIControlEventTouchDown];
    [self.buttonRound2 addTarget:self
                          action:@selector(actionbuttonRound2)
                forControlEvents:UIControlEventTouchUpInside];

    //Свойства labelButtonRound2--------------
    self.labelButtonRound2.textColor = [UIColor colorWithHexString:
                                                    STANDART_TEXT_COLOR_LABEL_BUTTON];
    self.labelButtonRound2.font = [UIFont fontWithName:
                                              STANDART_FONT_LABEL_TEXT_BUTTON
                                                  size:STANDART_SIZE_LABEL_TEXT_BUTTON];

    //Свойства кнопки buttonSquare2------------------------------------------------------
    self.buttonSquare2.backgroundColor = [UIColor colorWithHexString:
                                                      STANDART_BUTTON_BACKGROUND_COLOR];
    self.buttonSquare2.layer.borderColor = [UIColor colorWithHexString:
                                                        STANDART_LAYER_BORDER_COLOR_BUTTON]
                                               .CGColor;
    self.buttonSquare2.layer.borderWidth = 3.f;
    self.buttonSquare2.layer.cornerRadius = 10.f;
    [self.buttonSquare2 addTarget:self
                           action:@selector(tapButtonSquare2)
                 forControlEvents:UIControlEventTouchDown];
    [self.buttonSquare2 addTarget:self
                           action:@selector(actionbuttonSquare2)
                 forControlEvents:UIControlEventTouchUpInside];

    //Свойства labelButtonSquare2----------
    self.labelButtonSquare2.textColor = [UIColor colorWithHexString:
                                                     STANDART_TEXT_COLOR_LABEL_BUTTON];
    self.labelButtonSquare2.font = [UIFont fontWithName:
                                               STANDART_FONT_LABEL_TEXT_BUTTON
                                                   size:STANDART_SIZE_LABEL_TEXT_BUTTON];

    //viewWork----------------------------------------------------------------------------
    //    self.viewWork.layer.cornerRadius = 50.f;
    self.viewWork.backgroundColor = [UIColor colorWithHexString:@"005b96"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Buttons

//Тап кнопки buttonRound----------------------------------------------------------
- (void)tapButtonRound
{

    //Анимация кнопки------
    [Animation animationAlphaLabel:self.labelButtonRound alpha:0.3f];
    [Animation animateTransformView:self.buttonRound withScaleX:1.2f
                         withScaleY:1.2f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"005b96"]];
}
//Действие кнопки buttonRound------------------------------------------------------
- (void)actionButtonRound
{
    [Animation animationAlphaLabel:self.labelButtonRound alpha:1.f];
    [Animation animateTransformView:self.buttonRound withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateLayer:self.viewWork cornerRadius:50.f];
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:80.f move_Y:-175.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"011f4b"]];
}

//Тап кнопки buttonSquare-------------------------------------------------------
- (void)tapButtonSquare
{

    [Animation animationAlphaLabel:self.labelButtonSquare alpha:0.3f];
    [Animation animateTransformView:self.buttonSquare withScaleX:1.2f
                         withScaleY:1.2f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    
    //Анимация объекта------
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"005b96"]];
}
//Действие кнопки buttonSquare---------------------------------------------------
- (void)actionbuttonSquare
{
    [Animation animationAlphaLabel:self.labelButtonSquare alpha:1.f];
    [Animation animateTransformView:self.buttonSquare withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateLayer:self.viewWork cornerRadius:-50.f];
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:77.f move_Y:180.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"433e90"]];
}

//Тап кнопки buttonRound2-----------------------------------------------------------
- (void)tapButtonRound2
{

    [Animation animationAlphaLabel:self.labelButtonRound2 alpha:0.3f];
    [Animation animateTransformView:self.buttonRound2 withScaleX:1.2f
                         withScaleY:1.2f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"005b96"]];
}
//Действие кнопки buttonRound2------------------------------------------------------
- (void)actionbuttonRound2
{
    [Animation animationAlphaLabel:self.labelButtonRound2 alpha:1.f];
    [Animation animateTransformView:self.buttonRound2 withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateLayer:self.viewWork cornerRadius:50.f];
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:-77.f move_Y:180.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"011f4b"]];
}

//Тап кнопки buttonSquare2-----------------------------------------------------------
- (void)tapButtonSquare2
{

    [Animation animationAlphaLabel:self.labelButtonSquare2 alpha:0.3f];
    [Animation animateTransformView:self.buttonSquare2 withScaleX:1.2f
                         withScaleY:1.2f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"005b96"]];
}
//Действие кнопки buttonSquare2------------------------------------------------------
- (void)actionbuttonSquare2
{
    [Animation animationAlphaLabel:self.labelButtonSquare2 alpha:1.f];
    [Animation animateTransformView:self.buttonSquare2 withScaleX:1.f
                         withScaleY:1.f move_X:0.f move_Y:0.f alpha:1.f delay:0.f];
    //Анимация объекта------
    [Animation animateLayer:self.viewWork cornerRadius:-50.f];
    [Animation animateTransformView:self.viewWork withScaleX:1.f
                         withScaleY:1.f move_X:-77.f move_Y:-175.f alpha:1.f delay:0.f];
    [Animation animateColor:self.viewWork color:[UIColor colorWithHexString:@"433e90"]];
}

@end
