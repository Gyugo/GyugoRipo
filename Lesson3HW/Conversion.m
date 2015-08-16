//
//  Conversion.m
//  ElectronicsStore
//
//  Created by Viktor on 16.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "Conversion.h"
#import <UIKit/UIKit.h>

@implementation Conversion

//Преобразование приметивных типо данных в объекты и обратно.

- (void) conversionOfSimpleDataTypes {
    
    NSInteger freeNumber = 156; //Ввод интеджер
    NSString * myInteger = [NSString stringWithFormat:@"%li", freeNumber]; //приводим число в строку
    NSInteger backNumber = [myInteger integerValue]; //возвращаем примитивный тип данных
    NSLog(@"%li", backNumber); //выводим значение на экран
    
    CGFloat floatNumber = 1.45f; //Ввод флоат
    NSString * myFloat = [NSString stringWithFormat:@"%f", floatNumber]; //приводим число в строку
    CGFloat backFloat = [myFloat floatValue]; //возвращаем примитивный тип данных
    NSLog(@"%1.2f", backFloat); //выводим значение на экран
    
    NSInteger intNumber = 12; //Ввод интеджер
    NSNumber * numbInteger = [NSNumber numberWithInteger:intNumber]; //Создаём объект с числовым значением
    NSInteger numberInt = [numbInteger integerValue]; //возвращаем примитивный тип данных
    NSLog(@"%li", numberInt); //выводим значение на экран
    
    CGFloat flNumber = 34.25f; //Ввод флоат
    NSNumber * numberLF = [NSNumber numberWithFloat:flNumber]; //Создаём объект с числовым значением
    CGFloat objWithFloat = [numberLF floatValue]; //возвращаем примитивный тип данных
    NSLog(@"%1.2f", objWithFloat); //выводим значение на экран
}

@end
