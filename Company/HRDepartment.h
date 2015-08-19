//
//  HRDepartment.h
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface HRDepartment : CompanyMain
@property (strong, nonatomic) NSString* wellcome;

//Список сотрудников головного офиса
//ITОтдел------------------------------------------------------
- (NSMutableArray*)baseEmployeesIT; // Базовый список сотрудников
- (void)printBaseEmployeesIT; // Вывод на экран базового списка сотрудников
- (void)workEmployeesIT; //Рабочий список сотрудников, Новый список сотрудников

//-------------------------------------------------------------

- (NSMutableArray*)employeesHR; //Массив сотрудников HR
//-------------------------------------------------------------

- (NSMutableArray*)employeesAdministrative; //Массив Административного Отдела

//ФинОтдел-----------------------------------------------------
- (NSMutableArray*)baseEmployeesFinDep; //Базовый список сотрудников финансового отделе
- (void)dismissedEmployeesFinDep; //Список уволенных сотрудников
- (void)workingEmployeesFinDep; //Рабочий список сотрудников Финансового департамента
- (void)printBaseEmployeesFinDep; //Распечатка базового списка сотрудников фин отдела
//-------------------------------------------------------------

@end
