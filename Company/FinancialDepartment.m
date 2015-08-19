//
//  FinancialDepartment.m
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "FinancialDepartment.h"

@implementation FinancialDepartment

//Зарплата сотрудников--------------------------------

- (void) staffSalaries {
    NSLog(@"Зарплата сотрудников компании составляет: ");
    NSDictionary * salary = [[NSDictionary alloc] initWithObjectsAndKeys:
                             @"Администратиынй отдел", @"60 000",
                             @"IT Отдел", @"35 000 рублей",
                             @"HR Отдел", @"40 000 рублей",
                             @"Фин. отдел", @"50 000 рублей", nil];
    for(NSString * key in [salary allKeys]){
        NSLog(@"%@ = %@", key,
              [salary objectForKey:key]);
    }
}

//Выдача зарплата-------------------------------------
- (BOOL) paymentOfWages {
    return YES;
    }
//Выпод на экран решения о выдаче зарплаты
- (void) printPaymentOfWages {
    if ([self paymentOfWages] == YES) {
        NSLog(@"Поздравляю вы получите зарплату");
    }
    else
        NSLog(@"Извините в этом месяце мы вам ничего не заплатим :(( ");
}
@end
