//
//  MyCompany.m
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "MyCompany.h"

@implementation MyCompany
//---------------------------------------------------
//Создание метода сотрудников компании
- (void) myConpanyInfo {
    
    NSMutableArray *arraymCompany = [[NSMutableArray alloc] init]; //Создание массива для хранения всех данных
    
//Создание массивов данных------------------------------------
    NSArray * arrayNames = [[NSArray alloc] initWithObjects: //ФИО сутрудников-------------------------
            @"ФИО:  Петров Василий Иванович", @"ФИО:  Устинов Генадий Петрович", @"ФИО:  Венков Александр Сергеевич",
            @"ФИО:  Бубнов Фёдр Михайлович", @"ФИО:  Малуев Сергей Викторович", @"ФИО:  Несербская Алла Петровна",
            @"ФИО:  Геворкян Арсен Зурабович", @"ФИО:  Грибоедов Сергей Сергеевич", @"ФИО:  Астуфьева Алла Сергеевна",
            @"ФИО:  Бочкова Евгения Степановна", nil];
    
    NSArray * arrayPosition = [[NSArray alloc] initWithObjects: //Должности сотрудников----------------
            @"Должн: Директор Компании", @"Должн: Зам. Директорa", @"Должн: Специалист АХО",
            @"Должн: IT Директор", @"Должн: Сотрудник IT Отдела", @"Должн: Бухгалтер",
            @"Должн: Маркетолог", @"Должн: Консультант", @"Должн: Сотрудник HR",
            @"Должн: Дизайнер", nil];
    NSArray * arrayHobby = [[NSArray alloc] initWithObjects: //Хобби сотрудников
            @"Хобби: Играю в шахматы", @"Хобби: Бегаю по утрам", @"Хобби: Качаюсь в зале",
            @"Хобби: Играю в ПК игры", @"Хобби: Программирую", @"Хобби: Играю в Ферму",
            @"Хобби: Люблю рисовать", @"Хобби: Играю в теннис", @"Хобби: Фитнес",
            @"Хобби: Выращиваю цветы", nil];
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
    if ([self.delegate respondsToSelector:@selector(protocolMethod:string:)]) {
        [self.delegate protocolMethod:self string: array];
    }
}



@end
