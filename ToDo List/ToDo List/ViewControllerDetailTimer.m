//
//  ViewControllerDetailTimer.m
//  ToDo List
//
//  Created by Viktor on 10.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewControllerDetailTimer.h"

@interface ViewControllerDetailTimer () <UITextFieldDelegate>

@end

@implementation ViewControllerDetailTimer

- (void)viewDidLoad
{
    [super viewDidLoad];

    //Скрытие клавиатуры tap качанием-----------------------

    UITapGestureRecognizer* handTap = [[UITapGestureRecognizer alloc]
        initWithTarget:self
                action:@selector(handleEndEditing)];
    [self.view addGestureRecognizer:handTap]; //применение тап к view

    //Параметры buttonBackTimer------------------------------
    [self.buttonBackTimer addTarget:self
                             action:@selector(actionButtonBackTimer)
                   forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Действие кнопки buttonBackTimer-----------------------------
- (void)actionButtonBackTimer
{

    [self.navigationController popViewControllerAnimated:YES];
}

//реализация скрытия клавиатуры tap касанием-------------------
- (void)handleEndEditing
{

    if (self.textFieldTimer.text.length != 0) {

        [self.view endEditing:YES];
    }

    else {

        [self alertWithTimer:@"Для сохранения таймера введите род деятельности в текстовое поле"];
    }
}

#pragma mark - UITextFieldDelegate

//Реализация textFieldTimer------------------------------------

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{

    if ([textField isEqual:self.textFieldTimer]) {
        if (self.textFieldTimer.text.length != 0) {
            [self.textFieldTimer resignFirstResponder];

            return YES;
        }
        else {
            [self alertWithTimer:@"Для сохранения таймера введите род деятельности в текстовое поле"];
        }
    }
    return NO;
}

- (void)alertWithTimer:(NSString*)message
{

    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Внимение!!"
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil, nil];

    [alert show];
}

@end
