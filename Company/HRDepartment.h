//
//  HRDepartment.h
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface HRDepartment : CompanyMain


//Список сотрудников головного офиса

- (NSMutableArray*) employeesIT; //Массив сотрудников IT
- (NSMutableArray*) employeesHR; //Массив сотрудников HR
- (NSMutableArray*) employeesFinancial; //Массив сотрудников финансового отдела

- (void) test;

@end
