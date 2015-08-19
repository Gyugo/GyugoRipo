//
//  FinancialDepartment.h
//  Company
//
//  Created by Viktor on 19.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface FinancialDepartment : CompanyMain
@property (strong,nonatomic) NSString* wellcome;


//Зарплата сотрудников------------
- (void) staffSalaries;
//Выдача зарплаты---------------
- (BOOL) paymentOfWages;
- (void) printPaymentOfWages;

@end
