//
//  FactoryServersNetwork.m
//  HomeWork
//
//  Created by Viktor on 07.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "FactoryServersNetwork.h"

@implementation FactoryServersNetwork

//сборка

- (void) startFactoryServer
{
    [self choiceOfBody]; // выбор корпуса
    [self choiceOfMotherboard]; // выбор мат платы
    [self installingTheMotherboard]; // установка мат платы
    [self choiseOfProcessor];  // выпор процессора
    [self installingTheProcessor]; // установка процессова
    [self choiseOfRAM]; // выбор РАМ
    [self installingTheRAM]; // установка РАМ
    [self choiseOfHDD]; // выбор ХДД
    [self installingTheHDD]; // установка ХПП
}

- (void) choiceOfBody
{
    NSLog (@"chiceOfBody");
}

- (void) choiceOfMotherboard
{
    NSLog(@"choiceOfMotherboard");
}

- (void) installingTheMotherboard
{
    NSLog(@"installingTheMotherboard");
}

- (void) choiseOfProcessor
{
    NSLog(@"coiseOfProcessor");
}

- (void) installingTheProcessor
{
    NSLog(@"installingTheProcessot");
}

- (void) choiseOfRAM
{
    NSLog(@"coiseOfRAM");
}

- (void) installingTheRAM
{
    NSLog(@"installingTheRAM");
}

- (void) choiseOfHDD
{
    NSLog(@"choiseOfHDD");
}

- (void) installingTheHDD
{
    NSLog(@"installingTheHDD \n ");
}

//установка ОС

- (void) installationOfTheSoftware
{
    [self choiseOS]; // выбор ОС
    [self creationRAIDArray]; // создание рейд массива
    [self installationOS]; //установка ОС
    [self testingOS]; // тестирование
}

- (void) choiseOS
{
    NSLog(@"choiseOS");
}

- (void) creationRAIDArray
{
    NSLog(@"creationRAIDArray");
}

- (void) installationOS
{
    NSLog(@"installationOS");
}

- (void) testingOS
{
    NSLog(@"testingOS");
}


@end
