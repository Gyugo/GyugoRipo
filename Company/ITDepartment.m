

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
    [self workstationsIT];
    [self workstationsHR];
    [self workstationsFin];
}

// Рабочие станции Административного отдела------------------------

- (void)workstationsAdministative
{
    [self nameDepartmentWorstationAdm:@"Административный отдел"
              departmentsWorkstations:@"Mac OS"
                        processorName:@"Intel i3"
                   processorFrequency:3.0f
                              ramName:@"Kingston"
                            ramVolume:16.f];
}

- (void)nameDepartmentWorstationAdm:(NSString*)str1
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

//--------------------------------------------------------------------
// Рабочие станции IT отдела------------------------------------------
- (void)workstationsIT
{
    [self nameDepartmentWorstationIT:@"IT отдел"
             departmentsWorkstations:@"Linux"
                       processorName:@"Intel i5"
                  processorFrequency:3.2f
                             ramName:@"Kingston"
                           ramVolume:8.f];
}

- (void)nameDepartmentWorstationIT:(NSString*)str1
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
//-------------------------------------------------------
// Рабочие станции HR отдела-----------------------------
- (void)workstationsHR
{
    [self nameDepartmentWorstationHR:@"HR Отдел"
             departmentsWorkstations:@"Windows"
                       processorName:@"Intel core 2 Duo"
                  processorFrequency:2.4f
                             ramName:@"Kingston"
                           ramVolume:4.f];
}

- (void)nameDepartmentWorstationHR:(NSString*)str1
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

//-------------------------------------------------------
// Рабочие станции Финансового отдела--------------------
- (void)workstationsFin
{
    [self nameDepartmentWorstationFin:@"Финансовый отдел"
              departmentsWorkstations:@"Windows"
                        processorName:@"Intel core 2 Duo"
                   processorFrequency:2.4f
                              ramName:@"Kingston"
                            ramVolume:6.f];
}

- (void)nameDepartmentWorstationFin:(NSString*)str1
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
//--------------------------------------------------------------------------
//---------------------------------------------------
//Обработка данные сервера---------------------------
//---------------------------------------------------
//Получение данных-----------------------------------
- (NSDictionary*)dataProcessingServer
{
    NSDictionary* dictDataProcessingServer = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                @"sdfsdfwerfHello: Datasdv3442f", @"key1",
                                                                @"fjdyc7d6vjHello: Testmlkdcsaudfchsuiadv", @"key2",
                                                                @"fjdyf7d6vhHello: Opssjashasfhhksdjv", @"key3", nil];

    return dictDataProcessingServer;
}
//Вывод данных на экран------------------------------------
- (void)printDataProcessingServer
{
    NSLog(@"Получение данных с сервера");
    NSLog(@"\n Первое значение: %@ \n Второе значение: %@ \n Третье значение: %@", [self.dataProcessingServer objectForKey:@"key1"], [self.dataProcessingServer objectForKey:@"key2"], [self.dataProcessingServer objectForKey:@"key3"]);
}
//Конвертирование в строку 1 данных из сервера и обработка ёё----------------
- (NSString*)conversionProcessingServer1
{
    NSString* conversion1 = [NSString stringWithFormat:@"%@", [self.dataProcessingServer objectForKey:@"key1"]];
    NSString* andConversion1 = [conversion1 substringWithRange:self.rangeDataProcessingServer];

    return andConversion1;
}
- (void)timeMethod
{
    NSLog(@"Обработка......");
}
//Вывод на экран результата обработанной строки 1-----------------------------
- (void)printConversionProcessingServer1
{
    NSLog(@"Обработанная строка1: %@", self.conversionProcessingServer1);
}
//Конвертирование в строку 2 данных из сервера и обработка ёё----------------
- (NSString*)conversionProcessingServer2
{
    NSString* conversion2 = [NSString stringWithFormat:@"%@", [self.dataProcessingServer objectForKey:@"key2"]];
    NSString* andConversion2 = [conversion2 substringWithRange:self.rangeDataProcessingServer];
    return andConversion2;
}
//Вывод на экран результата обработанной строки 2-----------------------------
- (void)printConversionProcessingServer2
{
    NSLog(@"Обработанная строка2: %@", self.conversionProcessingServer2);
}
//Конвертирование в строку 3 данных из сервера и обработка ёё----------------
- (NSString*)conversionProcessingServer3
{
    NSString* conversion3 = [NSString stringWithFormat:@"%@", [self.dataProcessingServer objectForKey:@"key1"]];
    NSString* andConversion3 = [conversion3 substringWithRange:self.rangeDataProcessingServer];

    return andConversion3;
}
//Вывод на экран результата обработанной строки 3-----------------------------
- (void)printConversionProcessingServer3
{
    NSLog(@"Обработанная строка2: %@", self.conversionProcessingServer3);
}
//Вывод на экран результата обработанной всех строк---------------------------
- (void)printAllConversionProcessingServer
{

    [self printConversionProcessingServer1];
    [self printConversionProcessingServer2];
    [self printConversionProcessingServer3];
}
//Рэнж для чистки мусора-----------------------------------------------------
- (NSRange)rangeDataProcessingServer
{
    NSRange rangeDataProcessing = NSMakeRange(10, 11);
    return rangeDataProcessing;
}

@end
