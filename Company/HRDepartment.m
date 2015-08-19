//
//  HRDepartment.m
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "HRDepartment.h"

@implementation HRDepartment

//----------------------------------------------
//Список сотрудников головного офиса------------
//----------------------------------------------

- (NSMutableArray*)baseEmployeesIT
{ //Базовый Массив Сотрудников отдела IT--------------------------------------

    NSMutableArray* mEmployeesIT = [[NSMutableArray alloc] initWithObjects:@"Петров Фёдр Иванович", @"Кучаров Виктор Анатольевич", @"Сидоров Сергей Иванович", @"Бескрылов Анатолий Генадиевич", @"Шахваростов Владислав Андреевич", @"Беляев Денич Федорович", nil];
    return mEmployeesIT;
}

//Распечатка базового массива IT Отдела-------------------------------------
- (void)printBaseEmployeesIT
{
    NSLog(@"Базовый список сотрудников IT отдела");
    for (int i = 0; i < self.baseEmployeesIT.count; i++) {
        NSLog(@"%i. %@", i + 1, [self.baseEmployeesIT objectAtIndex:(i)]);
    }
}

//Рабочтй список сотрудников IT отдела
- (void)workEmployeesIT
{
    NSMutableArray* mArrayNewEmpIT = [[NSMutableArray alloc] initWithArray:self.baseEmployeesIT];
    [mArrayNewEmpIT insertObject:@"Козлов Александ Генадьевич" atIndex:6];
    [mArrayNewEmpIT insertObject:@"Гильназурян Аганел Тофиковна" atIndex:7];
    NSLog(@"Рабочий список сотрудников IT отдела: ");
    for (int i = 0; i < mArrayNewEmpIT.count; i++) {
        NSLog(@"%i. %@", i + 1, [mArrayNewEmpIT objectAtIndex:(i)]);
    }
    [self dividingLine];
    NSLog(@"Список новых сотрудников IT отдела:\n \t\t\t\t\t\t\t\t\t\t\t  1. %@\n \t\t\t\t\t\t\t\t\t\t\t  2. %@", [mArrayNewEmpIT objectAtIndex:(6)], [mArrayNewEmpIT objectAtIndex:(7)]);
}

//Новые сотрудники IT отдела

//---------------------------------------------------------------------

- (NSMutableArray*)employeesHR
{ //Массив Сотрудников HR отдела

    NSMutableArray* mEmployeesHR = [[NSMutableArray alloc] initWithObjects:@"Гончарова Нина Фёдоровна", @"Успенская Татьяна Ивановна", @"Несербская Анжелика Ашотовна", @"Кургнова Марина Павловна", @"Стрелецкая Марина Игнатьевна", nil];
    NSLog(@"Рабочий список сотрудников HR отдела: ");
    for (int i = 0; i < mEmployeesHR.count; i++) {
        NSLog(@"%i. %@", i + 1, [mEmployeesHR objectAtIndex:(i)]);
    }
    return mEmployeesHR;
}

//-----------------------------------------------------------------------

- (NSMutableArray*)employeesAdministrative
{ //Массив сотрудников Административного отдела

    NSMutableArray* mEmployeesAdministrative = [[NSMutableArray alloc] initWithObjects:@"Некрасов анатолий фёдорович", @"Сатинов Пётр Фёдорович", @"Киргянов Андрей Сергеевич", nil];
    NSLog(@"Рабочий список сотрудников Административного отдела: ");
    for (int i = 0; i < mEmployeesAdministrative.count; i++) {
        NSLog(@"%i. %@", i + 1, [mEmployeesAdministrative objectAtIndex:(i)]);
    }
    return mEmployeesAdministrative;
}

//Базовый Массив сотрудников Финансового отдела---------------------------

- (NSMutableArray*)baseEmployeesFinDep
{

    NSMutableArray* mEmployeesFinancial = [[NSMutableArray alloc] initWithObjects:@"Ангинина Алла Павловна", @"Бухарёва Светлана Степановна", @"Бизина Алёна Аванесовна", nil];

    return mEmployeesFinancial;
}

- (void)printBaseEmployeesFinDep
{
    NSLog(@"Базовый список сотрудников Фин.Отдела");
    for (int i = 0; i < self.baseEmployeesFinDep.count; i++) {
        NSLog(@"%i. %@", i + 1, [self.baseEmployeesFinDep objectAtIndex:(i)]);
    }
}

//Список уволенных сотрудников фин отдела---------------------------------

- (void)dismissedEmployeesFinDep
{
    NSLog(@"Список уволенных сотрудников Фин. отдела: 1. %@", [self.baseEmployeesFinDep objectAtIndex:(0)]);
}

//Рабочий список сотрудников-----------------------------------------------

- (void)workingEmployeesFinDep
{
    NSMutableArray* mWorkingArrayFinDep = [[NSMutableArray alloc] initWithArray:self.baseEmployeesFinDep];
    [mWorkingArrayFinDep removeObjectAtIndex:0];
    NSLog(@"Рябочий список сотрудников Фин. Отдела:");
    for (int i = 0; i < mWorkingArrayFinDep.count; i++) {
        NSLog(@"%i. %@", i + 1, [mWorkingArrayFinDep objectAtIndex:(i)]);
    }
}

@end
