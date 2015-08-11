//
//  FactoryServersNetwork.m
//  HomeWork
//
//  Created by Viktor on 07.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "FactoryDefaultServersNetwork.h"

// класс Фабрика сетевых серверов
@implementation FactoryDefaultServersNetwork

- (void) helloMetod {
    // Метод приветствия
    NSLog(@"\"WELCOME TO FACTORY SERVERS NETWORK\" class  -  [%@]\n ", NSStringFromClass([self class]));
    // Добро пожаловать на фабрику по изготовлению сетевых серверов
}


- (void) startFactoryServer {
    
    
    [self helloMetod];
    
    NSLog(@"Selection of components, build server\n "); //Подборка комплектующих, сборка сервера.
    
    [self choiceOfBody: @"MidiTOWER" sizeBody: 98];
    [self installingTheMotherboard:@"ATX"];
    [self installingTheProcessor: @"G2" frequencyProcessor: 3.7 manufacturer: @"Intel" numberOfCore: 2];
    [self installingTheRAM: @"Kingston" numberOfMemory: 8];
    [self installingTheHDD: @"Western Digital" numberOfMemory: 2 numberHDD: 4];


}

- (void) choiceOfBody: (NSString*) View sizeBody:(int) Value {
    //Выбор корпуса: 1 - Тип. 2 - Размер корпуса в "см".
    NSLog (@"Choice Of Body %@, Size: %i sm", View, Value);
}


- (void) installingTheMotherboard: (NSString*) Type {
    //Установка стандартной мат. платы: 1 - Производитель
    NSLog(@"Installing The Motherboard Manufacturer: %@", Type);
}


- (void) installingTheProcessor: (NSString*) SocketType  frequencyProcessor: (float) SizeFrequency manufacturer: (NSString*) Type  numberOfCore: (int) Core  {
    //Установка стандартного процессора: 1 - Сокет. 2 - Частота в Ггц. 3 - Производитель. 4 - Кол-во ядер.
    NSLog(@"Installing The Processor Socket: %@, Fraquency: %1.1f GHz, manufacturer: %@, Cores: %i", SocketType, SizeFrequency, Type, Core);
}


- (void) installingTheRAM: (NSString*) Type numberOfMemory: (int) Size {
    //Установка стандартной оперативной памяти: 1 - Производитель. 2 - Кол-во памяти в Гб.
    NSLog(@"Installing The RAM Manufacturer: %@, Number Of Mamory: %i Gb", Type, Size);
}


- (void) installingTheHDD: (NSString*) Type numberOfMemory: (int) Size numberHDD: (int) Value {
    //Установка стандартного жесткого диска: 1 - Производитель. 2 - Кол-во памяти в Гб. 3 - Кол-во HDD.
    NSLog(@"Installing The HDD Manufacturer: %@, Number Of Mamory %i Tb, Number HDD: %i\n ", Type, Size, Value);
}


- (void) installationВуOfTheSoftware  {
    //Установка программной части
    NSLog(@"Selectiom Operating System\n ");
    
    [self installationOperatingSystem];
    [self testingOS];
    [self sendingACustomer];

}


- (NSString*) creationRaidArray1 {
    //Возвращаем значение строки (Создаём рэйд массив из -//- жёстких дисков) (первая часть текста)
    return @"Creating an array of REID";
}

- (int) numberHDDinREID{
    //Возвращаем значение 4
    return 4;
}

- (NSString*) creationRaidArray2 {
    //Возвращаем значение строки (Создаём рэйд массив из -//- жёстких дисков) (вторая часть текста)
    return @"HDD\n ";
}

- (void) installationOperatingSystem {
    //Установка операционной системы Windows Server
    NSLog (@"Installation OS Windows server");
}

- (void) testingOS {
    //Тестирование
    NSLog (@"Testing Operating");
}

- (void) sendingACustomer {
    //Отправка сервера клиенту
    NSLog (@"Sending A Customer\n\n\n ");
}




@end
