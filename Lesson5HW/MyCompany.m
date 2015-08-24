//
//  MyCompany.m
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "MyCompany.h"

@implementation MyCompany
//-----------------------------------------------------------------------------------------------------------------------------------
//Первый массив данных---------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------
- (void) myConpanyInfo {
    
    NSMutableArray *arraymCompany = [[NSMutableArray alloc] init]; //Создание массива для хранения всех данных
    
//Создание массивов данных------------------------------------
    NSArray * arrayNames = [[NSArray alloc] initWithObjects: //ФИО сутрудников-------------------------
            @"ФИО:  Петров Василий Иванович", @"ФИО:  Устинов Генадий Петрович", @"ФИО:  Венков Александр Сергеевич",
            @"ФИО:  Бубнов Фёдр Михайлович", @"ФИО:  Малуев Сергей Викторович", @"ФИО:  Несербская Алла Петровна",
            @"ФИО:  Геворкян Арсен Зурабович", @"ФИО:  Грибоедов Сергей Сергеевич", @"ФИО:  Астуфьева Алла Сергеевна",
            @"ФИО:  Бочкова Евгения Степановна", nil];
    
    NSArray * arrayPosition = [[NSArray alloc] initWithObjects: //Должности сотрудников----------------
            @"Должн: Директор", @"Должн: Зам. Директорa", @"Должн: Специалист АХО",
            @"Должн: IT Директор", @"Должн: Сотрудник IT", @"Должн: Бухгалтер",
            @"Должн: Маркетолог", @"Должн: Консультант", @"Должн: Сотрудник HR",
            @"Должн: Дизайнер", nil];
    NSArray * arrayHobby = [[NSArray alloc] initWithObjects: //Хобби сотрудников
            @"Хобби: Играю в шахматы", @"Хобби: Бегаю по утрам", @"Хобби: Качаюсь в зале",
            @"Хобби: Играю в ПК игры", @"Хобби: Программирую", @"Хобби: Играю в Ферму",
            @"Хобби: Люблю рисовать", @"Хобби: Играю в теннис", @"Хобби: Фитнес",
            @"Хобби: Люблю цветы", nil];
    NSArray * arrayFace = [[NSArray alloc] initWithObjects: //Фото сотрудников
            @"foto1.png", @"foto2.png", @"foto3.png", @"foto4.png", @"foto5.png",
            @"foto6.png", @"foto7.png", @"foto8.png", @"foto9.png", @"foto10.png", nil];
    
    //Создаём Коллекции в цикле для хранения массивов----------------------------------------------------
    
    for (int i = 0; i < arrayNames.count; i++) {
        NSDictionary * dictCompany = [[NSDictionary alloc] initWithObjectsAndKeys:
            [arrayNames objectAtIndex:i], @"name", //Коллекция имён
            [arrayPosition objectAtIndex:i], @"position", //Коллекция должностей
            [arrayHobby objectAtIndex:i], @"hobby", //Коллекция хобби
            [arrayFace objectAtIndex:i], @"face", nil]; //Коллекция лиц
        
    //Добавляем все коллекции и один массив---------------------------------------------------------------
        
            [arraymCompany addObject:dictCompany];
        
    }
    
    [self hideConpany:arraymCompany];
    
}
//Скрытый метод для передачи данных массива----------------------------------------------------------------
- (void) hideConpany: (NSMutableArray *) array {
        [self.delegate protocolMethodInfo:self string:array];
}

//-----------------------------------------------------------------------------------------------------------------------------------
//Второй массив данных---------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------------
- (void) myConpanyWorkPlace {
    NSMutableArray *arrayWorkPlace = [[NSMutableArray alloc] init]; //Создание массива для хранения всех данных
    
    //Создание массивов данных------------------------------------
    NSArray * arrayInitsyaly = [[NSArray alloc] initWithObjects: //Иницыалы сутрудников-------------------------
                            @"ФИО:  Петров В.И.", @"ФИО:  Устинов Г.П.", @"ФИО:  Венков А.С.",
                            @"ФИО:  Бубнов Ф.М.", @"ФИО:  Малуев С.В.", @"ФИО:  Несербская А.П.",
                            @"ФИО:  Геворкян А.З.", @"ФИО:  Грибоедов С.С.", @"ФИО:  Астуфьева А.С.",
                            @"ФИО:  Бочкова Е.С.", nil];
    
    NSArray * arrayProcessors = [[NSArray alloc] initWithObjects: //Процессоры сотрудников----------------
                               @"Проц: Intel i7 3.2 gHz", @"Проц: Intel i5 3.0 gHz", @"Проц: AMDPhenom™ II 2.4 gHz",
                               @"Проц: Intel i7 3.2 gHz", @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz",
                               @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz", @"Проц: Intel i3 2.4 gHz",
                               @"Проц: Intel i5 3.0 gHz", nil];
    NSArray * arrayRAM = [[NSArray alloc] initWithObjects: //Оперативная Память сотрудников
                            @"Хобби: Kingston 16 Gb", @"Хобби: Kingston 8 Gb", @"Хобби: Kingston 4 Gb",
                            @"Хобби: Kingston 8 Gb", @"Хобби: Kingston 4 Gb", @"Хобби: Kingston 4 Gb",
                            @"Хобби: Kingston 4 Gb", @"Хобби: Kingston 4 Gb", @"Хобби: Kingston 4 Gb",
                            @"Хобби: Kingston 8 Gb", nil];
    NSArray * arrayOS = [[NSArray alloc] initWithObjects: //Фото сотрудников
                           @"Windows 8", @"Windows 8", @"Windows 8", @"Linux", @"Mac OSx",
                           @"Windows 8", @"Windows 8", @"Windows 8", @"Windows 8", @"Mac OSx", nil];
    
    //Создаём Коллекции в цикле для хранения массивов----------------------------------------------------
    
    for (int i = 0; i < arrayInitsyaly.count; i++) {
        NSDictionary * dictWorkPlace = [[NSDictionary alloc] initWithObjectsAndKeys:
                                      [arrayInitsyaly objectAtIndex:i], @"init", //Коллекция Инициалов
                                      [arrayProcessors objectAtIndex:i], @"proc", //Коллекция Процессоров
                                      [arrayRAM objectAtIndex:i], @"ram", //Коллекция Оперативной памяти
                                      [arrayOS objectAtIndex:i], @"os", nil]; //Коллекция операционных систем
        
        //Добавляем все коллекции и один массив---------------------------------------------------------------
        
        [arrayWorkPlace addObject:dictWorkPlace];
}
    [self hideWorkPlace:arrayWorkPlace];
}
//Скрытый метод для передачи данных массива------------------------------------------------------------------
- (void) hideWorkPlace: (NSMutableArray *) arrayWP {
        [self.delegate protocolMethodWorkPlace:self string:arrayWP];

}
@end
