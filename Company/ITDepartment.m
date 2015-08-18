

//
//  ITDepartment.m
//  Company
//
//  Created by Viktor on 18.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ITDepartment.h"
#import <UIKit/UIKit.h>

@implementation ITDepartment

//---------------------------------------------------
//Рабочие станции------------------------------------
//---------------------------------------------------

- (void)workstationsCompany
{

    [self workstationsAdministative];
}

- (void)workstationsAdministative // Рабочие станции Административного отдела
{
    [self nameDepartmentWorstation:@"Административный отдел"
           departmentsWorkstations:@"Mac OS"
                     processorName:@"Intel i3"
                processorFrequency:3.0f
                           ramName:@"Kingston"
                         ramVolume:16.f];
}

- (void)nameDepartmentWorstation:(NSString*)str1
         departmentsWorkstations:(NSString*)str2
                   processorName:(NSString*)str3
              processorFrequency:(CGFloat)float1
                         ramName:(NSString*)str4
                       ramVolume:(CGFloat)float2
{
    NSLog(@"\n\nРабочии станции входящие в %@ состоят из: \n 1. Операционная "
        @"система: %@ \n 2. Наименование процессора: %@ \n 3. Чаcтота "
        @"процессора: %1.1f Ггц\n 4. Наименование оперативной памяти %@ \n 5. "
        @"Объём оперативной памяти %1.0f Гб",
        str1, str2, str3, float1, str4, float2);
}

//---------------------------------------------------
//Сервера Компании-----------------------------------
//---------------------------------------------------

- (void)serversCompany
{

    NSLog(@"Придумать что сюда вписать !!!!");
}

//---------------------------------------------------
//Ограничение доступа--------------------------------
//---------------------------------------------------

- (void)restrictedAccess
{

    NSLog(@"Придумать что сюда вписать !!!!");
}

@end
