//
//  CompanyMain.m
//  Company
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@implementation CompanyMain

- (void)departmentsCompany
{
    //Список отделов компании

    [self administrativeDepartment];
    [self iTDepartment];
    [self hRDepartment];
    [self financialDepartment];
    [self salesDepartment];
}

- (void)administrativeDepartment
{ // Административный отдел

    NSLog(@"Административный отдел");
}

- (void)iTDepartment
{ // IT отдел

    NSLog(@"IT отдел");
}

- (void)hRDepartment
{ // HR отдел

    NSLog(@"Отдел подбора персонала");
}

- (void)financialDepartment
{ // Финансовый отдел

    NSLog(@"Финансовый отдел");
}

- (void)salesDepartment
{ // Отдел продаж

    NSLog(@"Отдел продаж");
}

@end
