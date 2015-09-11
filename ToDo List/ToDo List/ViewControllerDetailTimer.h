//
//  ViewControllerDetailTimer.h
//  ToDo List
//
//  Created by Viktor on 10.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerDetailTimer : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldTimer; //Текстовое поле Timer
@property (weak, nonatomic) IBOutlet UIButton *buttonBackTimer; //Кнопка возврата
@property (weak, nonatomic) IBOutlet UIButton *buttonSaveTimer; //Кнопка сохранения
@property (weak, nonatomic) IBOutlet UILabel *labelStatus; //Статус таймера
@property (weak, nonatomic) IBOutlet UILabel *labelTimeValue; //Временное значение

@property (nonatomic, assign) BOOL isDetail;
@end
