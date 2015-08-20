//
//  HRDepartment.h
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface HRDepartment : CompanyMain
@property (strong, nonatomic) NSMutableArray * employeesIT; //Массив сотрудников IT отдела
@property (strong, nonatomic) NSMutableArray * employeesHR; //Массив сотрудников HR отдела
@property (strong, nonatomic) NSMutableArray * employeesADM; //Массив сотрудников Административного отдела
@property (strong, nonatomic) NSMutableArray * employeesFin; //Массив сотрудников Финансового отдела

//Метод инициализации IT сотрудников-------
- (void) initEmployeesIT;
//Метод инициализации HR сотрудников-------
- (void) initEmployeesHR;
//Метод инициализации сотрудников Административного отдела-------
- (void) initEmployeesAdm;
//Метод инициализации сотрудников Финансового отдела-------
- (void) initEmployeesFin;
@end
