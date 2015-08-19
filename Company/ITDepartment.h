//
//  ITDepartment.h
//  Company
//
//  Created by Viktor on 18.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface ITDepartment : CompanyMain
@property (strong,nonatomic) NSString* wellcome;
//--------------------------------------------------------------
- (void)workstationsCompany; //рабочие станции
//---------------------------------------------------------------
//Получение данных с сервера и их обработка----------------------
//---------------------------------------------------------------
- (NSDictionary *) dataProcessingServer; //получение данных
- (void) printDataProcessingServer; //вывод данных на экран
- (void) timeMethod; //Метод ожидания
- (NSString *) conversionProcessingServer1; // конвертирование 1 значения коллекции в строку
- (NSString *) conversionProcessingServer2; // конвертирование 2 значения коллекции в строку
- (NSString *) conversionProcessingServer3; // конвертирование 2 значения коллекции в строку
- (NSRange) rangeDataProcessingServer; //Ренж для чистки мусора
//-------------------------------------------------------
- (void) printAllConversionProcessingServer; //Вывод на экран очищенных строк

@end
