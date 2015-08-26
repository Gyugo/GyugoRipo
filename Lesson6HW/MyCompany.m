//
//  MyCompany.m
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "MyCompany.h"
#import "MacrosMyCompany.h"

@implementation MyCompany
//-----------------------------------------------------------------------------------
//Первый массив данных---------------------------------------------------------------
//-----------------------------------------------------------------------------------
- (void) myConpanyInfo {
    
    NSMutableArray *arrayMCompany = [[NSMutableArray alloc] init]; //Создание массива для хранения всех данных
    
    //Создание массивов данных------------------------------------
    NSArray * arrayNames = [[NSArray alloc] initWithObjects: //ФИО сутрудников------------------------
            @"ФИО:  Петров Василий Иванович", @"ФИО:  Устинов Генадий Петрович", @"ФИО:  Венков Александр Сергеевич",
            @"ФИО:  Бубнов Фёдр Михайлович", @"ФИО:  Малуев Сергей Викторович", @"ФИО:  Несербская Алла Петровна",
            @"ФИО:  Геворкян Арсен Зурабович", @"ФИО:  Грибоедов Сергей Сергеевич", @"ФИО:  Астуфьева Алла Сергеевна",
            @"ФИО:  Бочкова Евгения Степановна", nil];
    
    NSArray * arrayPosition = [[NSArray alloc] initWithObjects: //Должности сотрудников----------------
            @"Должн: Директор", @"Должн: Зам. Директорa", @"Должн: Специалист АХО",
            @"Должн: IT Директор", @"Должн: Сотрудник IT", @"Должн: Бухгалтер",
            @"Должн: Маркетолог", @"Должн: Консультант", @"Должн: Сотрудник HR",
            @"Должн: Дизайнер", nil];
    NSArray * arrayHobby = [[NSArray alloc] initWithObjects: //Хобби сотрудников-----------------------
            @"Хобби: Играю в шахматы", @"Хобби: Бегаю по утрам", @"Хобби: Качаюсь в зале",
            @"Хобби: Играю в ПК игры", @"Хобби: Программирую", @"Хобби: Играю в Ферму",
            @"Хобби: Люблю рисовать", @"Хобби: Играю в теннис", @"Хобби: Фитнес",
            @"Хобби: Люблю цветы", nil];
    NSArray * arrayFace = [[NSArray alloc] initWithObjects: //Фото сотрудников-------------------------
            @"Петров", @"Устинов", @"Венков", @"Бубнов", @"Малуев",
            @"Несербская", @"Геворкян", @"Грибоедов", @"Астуфьева", @"Бочкова", nil];
    
    //Создаём Коллекции в цикле для хранения массивов----------------------------------------------------
    
    for (int i = 0; i < arrayNames.count; i++) {
        NSDictionary * dictCompany = [[NSDictionary alloc] initWithObjectsAndKeys:
            [arrayNames objectAtIndex:i], @"name", //Коллекция имён
            [arrayPosition objectAtIndex:i], @"position", //Коллекция должностей
            [arrayHobby objectAtIndex:i], @"hobby", //Коллекция хобби
            [arrayFace objectAtIndex:i], @"face", nil]; //Коллекция лиц
        
    //Добавляем все коллекции и один массив---------------------------------------------------------------
        
            [arrayMCompany addObject:dictCompany];
        
    }
    
    NSDictionary * dictNotification = [[NSDictionary alloc] initWithObjectsAndKeys:arrayMCompany, @"array", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_MY_COMPANY_TableView_Employees object:nil userInfo:dictNotification];
    
}
//----------------------------------------------------------------------------------------
//Второй массив данных--------------------------------------------------------------------
//----------------------------------------------------------------------------------------
- (void) myConpanyWorkPlace {
    NSMutableArray *arrayMCompany= [[NSMutableArray alloc] init]; //Создание массива для хранения всех данных
    
    //Создание массивов данных------------------------------------
    NSArray * arrayInitsyaly = [[NSArray alloc] initWithObjects: //Иницыалы сутрудников---------------
              @"ФИО:  Петров В.И.", @"ФИО:  Устинов Г.П.", @"ФИО:  Венков А.С.",
              @"ФИО:  Бубнов Ф.М.", @"ФИО:  Малуев С.В.", @"ФИО:  Несербская А.П.",
              @"ФИО:  Геворкян А.З.", @"ФИО:  Грибоедов С.С.", @"ФИО:  Астуфьева А.С.",
              @"ФИО:  Бочкова Е.С.", nil];
    
    NSArray * arrayProcessors = [[NSArray alloc] initWithObjects: //Процессоры сотрудников------------
              @"Проц: Intel i7 3.2 gHz", @"Проц: Intel i5 3.0 gHz", @"Проц: AMDPhenom™ II 2.4 gHz",
              @"Проц: Intel i7 3.2 gHz", @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz",
              @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz",
              @"Проц: Intel i5 3.0 gHz", nil];
    NSArray * arrayRAM = [[NSArray alloc] initWithObjects: //Оперативная Память сотрудников------------
              @"ОЗУ: Kingston 16 Gb", @"ОЗУ: Kingston 8 Gb", @"ОЗУ: Kingston 4 Gb",
              @"ОЗУ: Kingston 8 Gb", @"ОЗУ: Kingston 4 Gb", @"ОЗУ: Kingston 4 Gb",
              @"ОЗУ: Kingston 4 Gb", @"ОЗУ: Kingston 4 Gb", @"ОЗУ: Kingston 4 Gb",
              @"ОЗУ: Kingston 8 Gb", nil];
    NSArray * arrayOS = [[NSArray alloc] initWithObjects: //Операционные системы сотрудников-----------
              @"OS: Windows 8", @"OS: Windows 8", @"OS: Windows 8", @"OS: Linux", @"OS: Mac OSx",
              @"OS: Windows 8", @"OS: Windows 8", @"OS: Windows 8", @"OS: Windows 8", @"OS: Mac OSx", nil];
    
    //Создаём Коллекции в цикле для хранения массивов---------------------------------------------------
    
    for (int i = 0; i < arrayInitsyaly.count; i++) {
        NSDictionary * dictWorkPlace = [[NSDictionary alloc] initWithObjectsAndKeys:
                       [arrayInitsyaly objectAtIndex:i], @"init", //Коллекция Инициалов
                       [arrayProcessors objectAtIndex:i], @"proc", //Коллекция Процессоров
                       [arrayRAM objectAtIndex:i], @"ram", //Коллекция Оперативной памяти
                       [arrayOS objectAtIndex:i], @"os", nil]; //Коллекция операционных систем
        
    //Добавляем все коллекции и один массив-------------------------------------------------------------
        
        [arrayMCompany addObject:dictWorkPlace];
    }
        NSDictionary * dictNotification = [[NSDictionary alloc] initWithObjectsAndKeys:arrayMCompany, @"array", nil];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_MY_COMPANY_TableView_WorkPlace object:nil userInfo:dictNotification];
}


@end

