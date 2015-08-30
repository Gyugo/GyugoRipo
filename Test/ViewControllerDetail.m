//
//  ViewControllerDetail.m
//  Test
//
//  Created by Viktor on 30.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewControllerDetail.h"
#import "TableViewMain.h"
#import "Macros.h"

@interface ViewControllerDetail () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton* buttonBackToDoList;
@property (weak, nonatomic) IBOutlet UITextField* textFieldToDoList;
@property (weak, nonatomic) IBOutlet UIDatePicker* dataPickerToDoList;
@property (weak, nonatomic) IBOutlet UIButton* ButtonSaveToDoList;

@end

@implementation ViewControllerDetail

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    if (self.isDetail) {
        
        self.textFieldToDoList.text = self.eventInfo;
        self.textFieldToDoList.userInteractionEnabled = NO; //блокировка текстового поля
    //Селектор анимации даты-------------------------------------------------------
        [self performSelector:@selector(setDataPickerValueWithAnimation) withObject:nil afterDelay:0.5];
        self.dataPickerToDoList.userInteractionEnabled = NO; //блокировка дата пикера
        self.ButtonSaveToDoList.alpha = 0; //скрытие кнопки
        
    //Селектор для кнопки возврата в стартовое окно--------------------------------
        [self.buttonBackToDoList addTarget:self
                                    action:
         @selector(buttonBack)
                          forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    else {
    
    
    //Свойтсво UILable (блокировка кнопки)-----------------------------------------
    self.ButtonSaveToDoList.userInteractionEnabled = NO;

    //Минимальное значение даты----------------------------------------------------
    self.dataPickerToDoList.minimumDate = [NSDate date];
    //Вызов селектора для распечатывания даты в консоли----------------------------
    [self.dataPickerToDoList addTarget:self
                                action:
                                    @selector(datePickerValueChanged)
                      forControlEvents:UIControlEventValueChanged];

    //Селектор для кнопки сохранения напомнаний------------------------------------
    [self.ButtonSaveToDoList addTarget:self
                                action:
                                    @selector(save)
                      forControlEvents:UIControlEventTouchUpInside];
    //Селектор для кнопки возврата в стартовое окно--------------------------------
    [self.buttonBackToDoList addTarget:self
                                action:
                                    @selector(buttonBack)
                      forControlEvents:UIControlEventTouchUpInside];

    UITapGestureRecognizer* handleTap = [[UITapGestureRecognizer alloc]
                                         initWithTarget:self action:@selector(handleEndEditing)];
    [self.view addGestureRecognizer:handleTap];
        
    
    }
        
}

//метод анимации даты со стартового в заданное----------------------------------------
- (void) setDataPickerValueWithAnimation {
    
    [self.dataPickerToDoList setDate:self.eventDate animated:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
//настрока кнопки возврата в стартовое окно------------------------------------------

- (void)buttonBack
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

//настройка правильного ввода даты----------------------------------------------------

- (void)save
{

    if (self.eventDate) {
        
        if ([self.eventDate compare:[NSDate date]] ==  NSOrderedSame) {
            
            [self showAlertWithMessage:@"Дата будуйщего события не может совпадать с текущей датой"];
        }
        
        else if ([self.eventDate compare:[NSDate date]] == NSOrderedAscending){
            [self showAlertWithMessage:@"Дата будуйщего события не может быть ранее текущего значения"];
        }
        else {
             [self setNotification];
        }
       
    }
    else {
        [self showAlertWithMessage:@"Измените значение даты на более позднее"];
    }
}

//метод напоминания уведомлений-------------------------------------------------------

- (void)setNotification
{
    NSString* eventInfo = self.textFieldToDoList.text; //стринг равный знач текстового поля

    NSDateFormatter* formater = [[NSDateFormatter alloc] init];
    formater.dateFormat = @"HH:mm dd.MMMM.yyyy"; //форматирование даты

    NSString* eventDate = [formater stringFromDate:self.eventDate]; //присвоивание формата даты

    NSDictionary* dict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                   eventInfo, @"eventInfo",
                                               eventDate, @"eventDate",
                                               nil];
    UILocalNotification* notification = [[UILocalNotification alloc] init]; //создадим нотификацию
    //зададим свойства нотификации------------------------------------------------------
    notification.userInfo = dict;
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.fireDate = self.eventDate;
    notification.alertBody = eventInfo;
    notification.applicationIconBadgeNumber = 1;
    notification.soundName = UILocalNotificationDefaultSoundName;
    //внесём наши нотификации в наше приложение------------------------------------------
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_TABLE_VIEW_TO_DO_LIST object:nil];
    [self.navigationController popViewControllerAnimated:YES];
}

//Настройка текстового поля--------------------------------------------------------------

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{

    if ([textField isEqual:self.textFieldToDoList]) {
        if ([self.textFieldToDoList.text length] != 0) {
            [self.textFieldToDoList resignFirstResponder];
            self.ButtonSaveToDoList.userInteractionEnabled = YES;
            return YES;
        }

        else {
            [self showAlertWithMessage:@"Введите текст в текстовое поле"];
        }
    }

    return NO;
}

//Настройка тревожного сообщения----------------------------------------------------------

- (void)showAlertWithMessage:(NSString*)message
{
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"внимание"
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"ОК"
                                          otherButtonTitles:nil, nil];
    [alert show];
}

//Метод скрытия клавиатуры тап касанием----------------------------------------------------

- (void)handleEndEditing
{

        if ([self.textFieldToDoList.text length] != 0) {
            [self.view endEditing:YES];
            self.ButtonSaveToDoList.userInteractionEnabled = YES;
        }
        
        else {
            [self showAlertWithMessage:@"Введите текст в текстовое поле"];
        }
}
//Вывод в консоль введённое значение даты--------------------------------------------------
- (void)datePickerValueChanged
{

    self.eventDate = self.dataPickerToDoList.date;

    NSLog(@"data Piker %@", self.eventDate);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
