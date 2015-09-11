//
//  ViewControllerDetailToDoList.m
//  ToDo List
//
//  Created by Viktor on 06.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewControllerDetailToDoList.h"
#import "TableToDoList.h"
#import "Animation.h"

@interface ViewControllerDetailToDoList () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton* buttobBackViewControllerDetail; //Кнопка назад
@property (weak, nonatomic) IBOutlet UIView* barViewControllerDetail; //Бар экрана
@property (weak, nonatomic) IBOutlet UITextField* textFildViewControllerDetail; //Текстовое поле
@property (weak, nonatomic) IBOutlet UIDatePicker* datePirekViewControlleDetail; //Дата пикер
@property (weak, nonatomic) IBOutlet UIButton* buttonSaveViewControllerDetail; //Кнопка сохранить

@end

@implementation ViewControllerDetailToDoList

- (void)viewDidLoad
{
    [super viewDidLoad];

    isTextChoosen = YES;

    if (self.isDetail) {

        //Параметры основного view---------------------------------------------
        CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
        gradient.frame = self.viewMainDetail.bounds;
        gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor],
                                   (id)[[UIColor colorWithRed:1.f green:0.71f blue:0.1f alpha:1.f] CGColor],
                                   (id)[[UIColor colorWithRed:0.38f green:0.75f blue:0.02f alpha:1.f] CGColor], nil];
        [self.viewMainDetail.layer insertSublayer:gradient atIndex:0];

        //Параметры бара ViewControllerDeteail---------------------------------
        self.barViewControllerDetail.backgroundColor = [UIColor clearColor];
        self.barViewControllerDetail.layer.borderColor = [UIColor whiteColor].CGColor;
        self.barViewControllerDetail.layer.borderWidth = 2.f;
        self.barViewControllerDetail.layer.cornerRadius = 5.f;

        //labelButtonBack--------

        self.labelButtonBack.textColor = [UIColor colorWithRed:0.09f green:0.36f blue:0.03f alpha:1.f];

        //labelButtonSave---------

        self.labelButtonSave.alpha = 0.f;

        self.lableTextField.alpha = 0.f;

        //Параметры textField----------------------------------------------------

        self.textFildViewControllerDetail.text = self.eventInfo;
        self.textFildViewControllerDetail.userInteractionEnabled = NO;

        [self performSelector:@selector(setDataPickerValueWithAnimation) withObject:nil afterDelay:0.5];
        self.datePirekViewControlleDetail.userInteractionEnabled = NO;

        self.buttonSaveViewControllerDetail.alpha = 0.f;

        [self.buttobBackViewControllerDetail addTarget:self
                                                action:@selector(actionButtobBackViewControllerDetail)
                                      forControlEvents:UIControlEventTouchUpInside];
    }

    else {

        //Параметры основного view---------------------------------------------
        CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
        gradient.frame = self.viewMainDetail.bounds;
        gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor],
                                   (id)[[UIColor colorWithRed:1.f green:0.71f blue:0.1f alpha:1.f] CGColor],
                                   (id)[[UIColor colorWithRed:0.38f green:0.75f blue:0.02f alpha:1.f] CGColor], nil];
        [self.viewMainDetail.layer insertSublayer:gradient atIndex:0];

        //Параметры бара ViewControllerDeteail---------------------------------
        self.barViewControllerDetail.backgroundColor = [UIColor clearColor];
        self.barViewControllerDetail.layer.borderColor = [UIColor whiteColor].CGColor;
        self.barViewControllerDetail.layer.borderWidth = 2.f;
        self.barViewControllerDetail.layer.cornerRadius = 5.f;

        //Параметры кнопки buttonBack------------------------------------------
        self.buttobBackViewControllerDetail.backgroundColor = [UIColor clearColor];
        self.buttobBackViewControllerDetail.tintColor = [UIColor whiteColor];
        [self.buttobBackViewControllerDetail addTarget:self
                                                action:@selector(actionButtobBackViewControllerDetail)
                                      forControlEvents:UIControlEventTouchUpInside];
        //labelButtonBack--------

        self.labelButtonBack.textColor = [UIColor colorWithRed:0.09f green:0.36f blue:0.03f alpha:1.f];

        //Параметры кнопки buttonSave-------------------------------------------
        self.buttonSaveViewControllerDetail.userInteractionEnabled = NO;
        self.buttonSaveViewControllerDetail.backgroundColor = [UIColor clearColor];

        [self.buttonSaveViewControllerDetail addTarget:self
                                                action:@selector(actionButtonSaveViewControllerDetail)
                                      forControlEvents:UIControlEventTouchUpInside];
        //labelButtonSave---------
        self.labelButtonSave.textColor = [UIColor colorWithRed:0.09f green:0.36f blue:0.03f alpha:1.f];

        //Параметры текстового поля---------------------------------------------

        self.lableTextField.textColor = [UIColor blackColor];
        self.lableTextField.alpha = 0.6f;

        UITapGestureRecognizer* handTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleEndEditing)];
        [self.view addGestureRecognizer:handTap]; //применение тач к view

        //Параметры Дата Пикера-------------------------------------------------
        self.datePirekViewControlleDetail.minimumDate = [NSDate date]; //Мин значение даты

        [self.datePirekViewControlleDetail addTarget:self action:@selector(datePickerValueChanged) forControlEvents:UIControlEventValueChanged]; //вывод даты в консоль
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Метод закрытия клавиатуры тап каcанием------------------------------------

- (void)handleEndEditing
{
    if ([self.textFildViewControllerDetail.text length] != 0) {
        [self.view endEditing:YES];
        self.buttonSaveViewControllerDetail.userInteractionEnabled = YES;
    }
    else {
        [self showAlertWhithMessage:@"Для сохранения события введите значение в текстовое поле"];
    }
}

#pragma mark - Buttons

//Реализация кнопки buttonBack----------------------------------------------
- (void)actionButtobBackViewControllerDetail
{
    [self.navigationController popViewControllerAnimated:YES];
}

//Реализация кнопки buttonSave----------------------------------------------
- (void)actionButtonSaveViewControllerDetail
{

    if (self.eventDate) {

        if ([self.eventDate compare:[NSDate date]] == NSOrderedSame) {

            [self showAlertWhithMessage:@"Дата будущего события не может совпадать с текущей даты"];
        }

        else if ([self.eventDate compare:[NSDate date]] == NSOrderedAscending) {

            [self showAlertWhithMessage:@"Дата будущего события не может быть ранее текущей даты"];
        }
        else {

            [self notificationToDoList];
            [self.navigationController popViewControllerAnimated:YES];
        }
    }

    else {

        [self showAlertWhithMessage:
                  @"Для сохранения события измените значение даты на более позднее"];
    }
}

#pragma mark - UITextFieldDelegate

//Реализация текстового поля-------------------------------------------------

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{

    if ([textField isEqual:self.textFildViewControllerDetail]) {
        if ([self.textFildViewControllerDetail.text length] != 0) {

            [self.textFildViewControllerDetail resignFirstResponder];
            self.buttonSaveViewControllerDetail.userInteractionEnabled = YES;
            return YES;
        }
        else {
            [self showAlertWhithMessage:@"Для сохранения события введите значение в текстовое поле"];
        }
    }
    return NO;
}

#pragma mark - datePicker

//Реализация DatePicker-------------------------------------------------------

- (void)datePickerValueChanged
{

    self.eventDate = self.datePirekViewControlleDetail.date;

    NSLog(@"date Picker %@", self.eventDate);
}

- (void)setDataPickerValueWithAnimation
{

    [self.datePirekViewControlleDetail setDate:self.eventDate animated:YES];
}

#pragma mark - notification

//Напоминание------------------------------------------------------------------

- (void)notificationToDoList
{

    NSString* eventInfo = self.textFildViewControllerDetail.text;

    NSDateFormatter* formater = [[NSDateFormatter alloc] init]; //форматируем дату
    formater.dateFormat = @"HH:mm dd.MMMM.yyyy";

    NSString* eventDate = [formater stringFromDate:self.eventDate];

    NSDictionary* dict = [NSDictionary dictionaryWithObjectsAndKeys:
                                           eventInfo, @"eventInfo",
                                       eventDate, @"eventDate", nil];

    UILocalNotification* notification = [[UILocalNotification alloc] init];
    notification.userInfo = dict;
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.fireDate = self.eventDate;
    notification.alertBody = eventInfo;
    notification.applicationIconBadgeNumber = 1;
    notification.soundName = UILocalNotificationDefaultSoundName;

    [[UIApplication sharedApplication] scheduleLocalNotification:notification];

    [[NSNotificationCenter defaultCenter] postNotificationName:@"NewEvent" object:nil];
}

#pragma mark - alertMessage

//Тревога------------------------------------------------------------------------

- (void)showAlertWhithMessage:(NSString*)message
{

    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Внимание!"
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil, nil];
    [alert show];
}
//Анимация текстового поля--------------------------------------------------------
- (IBAction)actionTextField:(id)sender
{

    if (self.textFildViewControllerDetail.text.length != 0) {
        if (isTextChoosen) {

            isTextChoosen = NO;
            Animation* anim = [Animation new];
            [anim move_PlaceHoldr_UP:self.lableTextField Points:-25 TextColor:[UIColor lightGrayColor]];
        }
    }

    else {

        if (!isTextChoosen) {
            isTextChoosen = YES;
            Animation* anim = [Animation new];
            [anim move_PlaceHoldr_UP:self.lableTextField Points:25 TextColor:[UIColor blackColor]];
        }
    }
}
@end
