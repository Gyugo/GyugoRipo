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
    [self innovationsName:@"Деталь для изучения \"базона хикса\"" innovationsBallans:30000.f innovationsProfit:75000.f];
}

- (void)innovationsName:(NSString*)str innovationsBallans:(CGFloat)value1 innovationsProfit:(CGFloat)value2
{

    NSLog(@"Ввести новый проект под название: %@, со стартовым расходом %f, планируеммая прибыль %f", str, value1, value2);
}

//-----------------------------------------------
//Квартальные задачи-----------------------------
//-----------------------------------------------

- (void)quarterlyObjectives
{ //Список квартальных премий
    [self quarterlyObjectivesIT];
    [self quarterlyObjectivesHR];
    [self quarterlyObjectivesFinancial];
    [self quarterlyObjectivesSales];
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

- (void)quarterlyObjectivesSales
{ //Задачи Отдела продаж
    if ([self performance] == 1) {
        [self quarterlyAward:15000 quarterlyNameDepartment:@"Отдел продаж"];
    }
    else if ([self performance] != 1) {

        NSLog(@"Отдел продаж");
        NSLog(@"Вы не получили квартальную премию, работайте лучше!!");
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
    NSLog(@"%@:  ваша премия стоставила: %li рублей!!", str, value1);
}

@end
