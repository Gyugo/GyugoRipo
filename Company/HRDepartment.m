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
//Список сотрудников головного офиса------------
//----------------------------------------------

- (NSMutableArray*) employeesIT { //Массив Сотрудников отдела IT
    
    NSMutableArray * mEmployeesIT = [[NSMutableArray alloc] initWithObjects: @"Петров Фёдр Иванович",  @"Кучаров_Виктор_Анатольевич", @"Сидоров Сергей Иванович", @"Бескрылов Анатолий Генадиевич", @"Шахваростов Владислав Андреевич", @"Беляев Денич Федорович", nil];
        return mEmployeesIT;
}

//---------------------------------------------------------------------


- (NSMutableArray*) employeesHR { //Массив Сотрудников HR отдела

    NSMutableArray * mEmployeesHR = [[NSMutableArray alloc] initWithObjects: @"Гончарова Нина Фёдоровна",  @"Успенская Татьяна Ивановна", @"Несербская Анжелика Ашотовна", @"Кургнова Марина Павловна", @"Стрелецкая Марина Игнатьевна", nil];
    return mEmployeesHR;
}

//-----------------------------------------------------------------------

- (NSMutableArray*) employeesAdministrative { //Массив сотрудников Административного отдела

    NSMutableArray * mEmployeesAdministrative = [[NSMutableArray alloc] initWithObjects: @"Некрасов анатолий фёдорович",  @"Сатинов Пётр Фёдорович", @"Киргянов Андрей Сергеевич", nil];
    return mEmployeesAdministrative;

}

//------------------------------------------------------------------------

- (NSMutableArray*) baseEmployeesFinancial { //Базовый Массив сотрудников Финансового отдела
    
    NSMutableArray * mEmployeesFinancial = [[NSMutableArray alloc] initWithObjects: @"Ангинина Алла Павловна",  @"Бухарёва Светлана Степановна",  @"Бизина Алёна Аванесовна", nil];
    
    return mEmployeesFinancial;
    
}

//------------------------------------------------------------------------
//

- (void) test {
    NSMutableArray * testmArray = [[NSMutableArray alloc] initWithArray:self.employeesFinancial];
    [testmArray removeObjectAtIndex:0];
    for (int i = 0; i < testmArray.count; i++) {
        NSLog(@"%@", [testmArray objectAtIndex:(i)]);
    }

}
    
    
    


@end
