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
//Список сотрудников офиса----------------------
//----------------------------------------------

//IT Отдел--------------------------------------
- (void) initEmployeesIT { //Метод инициализации массива IT сотрудников
    _employeesIT = [[NSMutableArray alloc] initWithObjects: nil];
}
//HR Отдел--------------------------------------
- (void) initEmployeesHR { //Метод инициализации массива HR сотрудников
    _employeesHR = [[NSMutableArray alloc] initWithObjects: nil];
}
//Административный отдел------------------------
- (void) initEmployeesAdm { //Метод инициализации массива сотрудников Административного отдела
    _employeesADM = [[NSMutableArray alloc] initWithObjects: nil];
}
//Финансовый отдел------------------------
- (void) initEmployeesFin { //Метод инициализации массива сотрудников Финансового отдела
    _employeesFin = [[NSMutableArray alloc] initWithObjects: nil];
}


@end
