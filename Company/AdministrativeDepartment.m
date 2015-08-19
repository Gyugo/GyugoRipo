//
//  AdministrativeDepartment.m
//  Company
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "AdministrativeDepartment.h"
#import <UIKit/UIKit.h>

@implementation AdministrativeDepartment

//-----------------------------------------------
//Административное разрешение--------------------
//-----------------------------------------------

- (void)setAdministrativeResolution
{
    NSLog(@"Одобрение проекта: ");

    if ([self administrativeResolution] != 0) {
        NSLog(@"Одобренно!!");
    }
    else
        NSLog(@"Отклонено!!");
}

- (BOOL)administrativeResolution
{
    return YES;
}

//-----------------------------------------------
//Инновации (новые идеи)-------------------------
//-----------------------------------------------

- (void)newInnovations
{
    
    NSLog(@"Развитие нового проекта:  ");
    [self innovationsName:@"Деталь для изучения \"базона хиггса\"" innovationsBallans:30000.f innovationsProfit:75000.f];
}

- (void)innovationsName:(NSString*)str innovationsBallans:(CGFloat)value1 innovationsProfit:(CGFloat)value2
{

    NSLog(@"Ввести новый проект под названием \"базон хиггса\": \n%@, со стартовым расходом %1.0f руб., планируеммая прибыль %1.0f", str, value1, value2);
}

//-----------------------------------------------
//Квартальные задачи-----------------------------
//-----------------------------------------------

- (void)quarterlyObjectives
{ //Список квартальных премий
    NSLog(@"Квартальные премии: ");
    [self quarterlyObjectivesIT];
    [self quarterlyObjectivesHR];
    [self quarterlyObjectivesFinancial];
}

- (void)quarterlyObjectivesIT
{ //Задачи IT
    if ([self performance] == 1) {
        [self quarterlyAward:17500 quarterlyNameDepartment:@"IT Отдел"];
    }
    else if ([self performance] != 1) {

        NSLog(@"IT Отдел");
        NSLog(@"Вы не получили квартальную премию, работайте лучше!!\n ");
    }
    else

        NSLog(@"Оспаривание ситуации");
}

- (void)quarterlyObjectivesHR
{ //Задачи HR
    if ([self performance] == 1) {
        [self quarterlyAward:19000 quarterlyNameDepartment:@"HR Отдел"];
    }
    else if ([self performance] != 1) {

        NSLog(@"HR Отдел");
        NSLog(@"Вы не получили квартальную премию, работайте лучше!!\n ");
    }
    else

        NSLog(@"Оспаривание ситуации");
}

- (void)quarterlyObjectivesFinancial
{ //Задачи финансистов
    if ([self performance] == 1) {
        [self quarterlyAward:25000 quarterlyNameDepartment:@"Финансовый отдел"];
    }
    else if ([self performance] != 1) {

        NSLog(@"Финансовый отдел");
        NSLog(@"Вы не получили квартальную премию, работайте лучше!!\n ");
    }
    else

        NSLog(@"Оспаривание ситуации");
}


- (BOOL)performance
{
    //исполнение квартальной задачи
    return YES;
}

- (void)quarterlyAward:(NSInteger)value1 quarterlyNameDepartment:(NSString*)str
{ // квартальная премия
    NSLog(@"%@:  ваша премия стоставила: %li рублей!!", str, (long)value1);
}

@end
