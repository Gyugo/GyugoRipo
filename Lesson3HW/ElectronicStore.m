//
//  ElectronicStore.m
//  ElectronicsStore
//
//  Created by Viktor on 15.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ElectronicStore.h"
#import <UIKit/UIKit.h>

//Магазин электроники "Cool Store"
@implementation ElectronicStore

- (void) helloMethod {
    //Привествуем вас в нашем замечательном магазине электроники.
    NSLog(@"Welcom to our wonderful electronics store\n ");
    [self priceStore:24.08f];
}

- (void) byeMethod {
    //Спасибо что выбрали наш магазин, приходите к нам ещё.
    NSLog(@"Thank you for choosing our store , come to us again \n\n ");
}

- (void) priceStore: (CGFloat) Value {
    //Ознакомьтесь с нашем прайсом за 27.04
    NSLog(@"\t\tCheck our price list for %1.2f\n ", Value);
    
}

//_______________________________________________________________________________
//___________________________________________Телевизор___________________________
//_______________________________________________________________________________

- (void) yourSelectedTV {
    NSLog(@"\t\t\t\"You TV Screen\"\n ");
    [self screenTVModel];
    [self screenTVDiagona];
    [self screenTV_3D];
}

//_____________________________Выбор Значений ТВ_________________________________

- (void) screenTVModel {
    //Метод выбора модели
    NSLog(@"You choose a model: %@", [self setScreenTVModel]); //Ваша модель TV
}

- (void) screenTVDiagona {
    //Метод выбора диагонали
    if ([self setScreenTVDiagonal] == 17) {
        NSLog(@"You choose a diagonal: %li inch", (long)[self setScreenTVDiagonal]); //Вы выбрали диагональ - 17
    } else if ([self setScreenTVDiagonal] == 23) {
        NSLog(@"You choose a diagonal: %li inch", (long)[self setScreenTVDiagonal]); //Вы выбрали диагональ - 23
    } else if ([self setScreenTVDiagonal] == 32) {
        NSLog(@"You choose a diagonal: %li inch", (long)[self setScreenTVDiagonal]); //Вы выбрали диагональ - 32
    } else
        NSLog(@"Sorry there is no such a diagonal"); //Ошибка. Диагональ отсутствует.
}

- (void) screenTV_3D {
    //Метод выбор телевизора с 3D возможностями
    if ([self setScreenTV_3D] == YES) {
        NSLog(@"You choose a TV with 3D capabilities\n "); //с возможностями 3D
    } else
        NSLog(@"You choose a TV withщге 3D capabilities\n "); //без возможностей 3D
}

//______________________Заданные значения ТВ_____________________________________

- (NSString*) setScreenTVModel {
    //Вводим значение модели телевизора и запоминаем его
    return @"LG";
}

- (NSInteger) setScreenTVDiagonal {
    //Вводим значение диагонали TV и запоминаем его
    return 23;
}

- (BOOL) setScreenTV_3D {
    //Выбираем TV с функцией 3D или без
    return YES;
}

//___________________________________________________________________________
//____________________________Стиральная машина______________________________
//___________________________________________________________________________

- (void) yourSelectedWashingMashine {
    NSLog(@"\t\t\t\"You Washing Mashine\"\n ");
    [self washingMashineModel];
    [self washingMachineHalterPerMinute];
    [self washingMashinePowerConsumption];
}


//_______________________Выбор Значений СМ___________________________________

- (void) washingMashineModel {
    //Медов выбора модели
    NSLog(@"You choose a model: %@", [self setWashingMachineModel]); //Ваша модель стиральной машины
}

- (void) washingMachineHalterPerMinute {
    //Метод выбора колличества оборотов в минуту
    if ([self setWashingMachineHalterPerMinute] == 700) {
        NSLog(@"You choose Halter Per Minute: %li revs/min", [self setWashingMachineHalterPerMinute]); //Ваше колличество оборотов в минуту
    } else if ([self setWashingMachineHalterPerMinute] == 1000) {
        NSLog(@"You choose Halter Per Minute: %li revs/min", [self setWashingMachineHalterPerMinute]); //Ваше колличество оборотов в минуту
    } else
        NSLog(@"Sorry there is no such a type model"); //Извините, у нас нет такой модели
    
}

- (void) washingMashinePowerConsumption {
    //Метод выбор потребляемой мощности стиральной машины
    if ([self setWashingMashinePowerConsumption] == 1.8f) {
        NSLog(@"You choose Power Consuption: %1.1f kVt\n ", [self setWashingMashinePowerConsumption]); //Ваша потребляемая мощность
    } else if ([self setWashingMashinePowerConsumption] == 2.3f) {
        NSLog(@"You choose Power Consuption: %1.1f kVt\n ", [self setWashingMashinePowerConsumption]); //Ваша потребляемая мощность
    } else
        NSLog(@"Sorry there is no such a type model\n "); //Извините, у нас нет такой модели
}


//_____________________Заданные значения СМ_________________________

- (NSString*) setWashingMachineModel {
    //Вводим значение модели стиральной машины и запоминаем его
    return @"Indesit";
}

- (NSInteger) setWashingMachineHalterPerMinute {
    //Вводим значение колличества оборотов в минуту и запоминаем его
    return 700;
}

- (CGFloat) setWashingMashinePowerConsumption {
    //Вводим значение потребляемой мощности и запоминаем его
    return 2.3f;
}

//_______________________________________________________________________
//___________________________Кондиционер_________________________________
//_______________________________________________________________________

- (void) yourSelectedAirConditioning {
    NSLog(@"\t\t\t\"You airConditioning\"\n ");
    [self airConditioningModel];
    [self airConditioningPower];
}

//____________________Выбор Значений КЦ__________________________________

- (void) airConditioningModel {
    //Метод выбора модели
    NSLog(@"You choose a model: %@", [self setAirConditioningModel]); //Ваша модель кондиционера
}

- (void) airConditioningPower {
    //Метод выбора мощности
    if ([self setAirConditioningType] != NO && [self setAirConditioningPower] <= 1300) {
        NSLog(@"You choose low-power air-conditioning\n "); //Вы выбрали маломощный кондиционер
    } else
        NSLog(@"You choose normal air-conditioning\n "); //Вы выбрали обычный кондиционер
}

//________________________Заданные значения КЦ_____________________________

- (NSString*) setAirConditioningModel {
    //Вводим значение модели кондиционера и запоминаем его
    return @"Midea";
}

- (BOOL) setAirConditioningType {
    //Вводим значение типа кондиционера (обычный или инверторный) и запоминаем его
    return NO;
}

- (NSInteger) setAirConditioningPower {
    //Вводим значение мощности кондиционера (маломощный или обычный) и запоминаем его
    return 1300;
}

- (void) dividingLine //разделительная черта
{
    NSLog(@"* * * * * * * * * * * * * * * * * * * * * * * * * *\n ");
}

- (void) waitMethod { //Пожалуйста подождите
    NSLog(@"Please wait............\n ");
}


@end
