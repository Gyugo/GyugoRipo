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

    if (!self.isDetail) {

        //Скрытие клавиатуры tap качанием-----------------------

        UITapGestureRecognizer* handTap = [[UITapGestureRecognizer alloc]
            initWithTarget:self
                    action:@selector(handleEndEditing)];
        [self.view addGestureRecognizer:handTap]; //применение тап к view

        //Параметры buttonBackTimer------------------------------
        [self.buttonBackTimer addTarget:self
                                 action:@selector(actionButtonBackTimer)
                       forControlEvents:UIControlEventTouchUpInside];

        //Параметры кнопки buttonSaveTimer------------------------
        [self.buttonSaveTimer addTarget:self
                                 action:@selector(actionButtonSave)
                       forControlEvents:UIControlEventTouchUpInside];

        //Параметры labelStatus-----------------------------------
        self.labelStatus.text = NSLocalizedString(@"", nil);
        self.labelStatus.backgroundColor = [UIColor clearColor];

        //Параметры labelTimeValue--------------------------------
        self.labelTimeValue.text = NSLocalizedString(@"", nil);
        self.labelTimeValue.backgroundColor = [UIColor clearColor];
    }
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
//Вывод ошибки----------------------------------------------------
- (void)alertWithTimer:(NSString*)message
{

    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Внимение!!"
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil, nil];

    [alert show];
}
//реализация кнопки buttonSaveTimer---------------------------------
- (void)actionButtonSave
{

    NSLog(@"Save");
}

@end
