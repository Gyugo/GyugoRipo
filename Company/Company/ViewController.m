//
//  ViewController.m
//  Company
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "AdministrativeDepartment.h"
#import "ITDepartment.h"
#import "HRDepartment.h"
#import "FinancialDepartment.h"

@interface ViewController ()
//Приветствие---------------------------------------------------
@property (weak, nonatomic) IBOutlet UIButton* CompanyButton;

@property (weak, nonatomic) IBOutlet UIButton* AdmDepmentButton;

@property (weak, nonatomic) IBOutlet UIButton* ITDepmentButton;

@property (weak, nonatomic) IBOutlet UIButton* FinDepButon;

@property (weak, nonatomic) IBOutlet UIButton* HRDepButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Кнопка наша компания
    [self.CompanyButton addTarget:self action:@selector(helloCompany) forControlEvents:UIControlEventTouchUpInside];
    //Кнопка административный отдел
    [self.AdmDepmentButton addTarget:self action:@selector(adminictativeDepartment) forControlEvents:UIControlEventTouchUpInside];
    //Кнопка IT Отдела
    [self.ITDepmentButton addTarget:self action:@selector(iTDepartment) forControlEvents:UIControlEventTouchUpInside];
    //Кнопка HR Отдела
    [self.HRDepButton addTarget:self action:@selector(hRDepartment) forControlEvents:UIControlEventTouchUpInside];
    //Кнопка Фин. Отдела
    [self.FinDepButon addTarget:self action:@selector(finDepartment) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Приветствие, о компании---------------------------------------------
- (void)helloCompany
{

    CompanyMain* myCompany = [[CompanyMain alloc] init];
    myCompany.nameCompany = @"North Wind";
    myCompany.activities = @"Компания занимается продажей элементов для научных организаций";
    myCompany.based = 2005;
    myCompany.aboutCompany = @"\nХорошая компания заниматся развитием научных центров \nи предоставляет им элементы для исследований, по очень низким ценам";

    NSLog(@"Название компании: %@", myCompany.nameCompany);
    NSLog(@"Деятельноть компании: %@", myCompany.activities);
    NSLog(@"Основанна в %li году", (long)myCompany.based);
    NSLog(@"О компании: %@", myCompany.aboutCompany);
    [myCompany dividingLine];
    [myCompany dividingLine];
}
//Административный отдел-----------------------------------------------
- (void)adminictativeDepartment
{
    AdministrativeDepartment* AdmCompany = [[AdministrativeDepartment alloc] init];
    [AdmCompany newInnovations];
    [AdmCompany dividingLine];
    [AdmCompany setAdministrativeResolution];
    [AdmCompany dividingLine];
    [AdmCompany quarterlyObjectives];
    [AdmCompany dividingLine];
    [AdmCompany dividingLine];
}
//IT Отдел--------------------------------------------------------------
- (void)iTDepartment
{
    ITDepartment* iTCompany = [[ITDepartment alloc] init];
    [iTCompany workstationsCompany];
    [iTCompany dividingLine];
    [iTCompany printDataProcessingServer];
    [iTCompany timeMethod];
    if ([iTCompany respondsToSelector:@selector(printAllConversionProcessingServer)]) {
        [iTCompany performSelector:@selector(printAllConversionProcessingServer) withObject:nil afterDelay:2.5];
    }
    if ([iTCompany respondsToSelector:@selector(dividingLine)]) {
        [iTCompany performSelector:@selector(dividingLine) withObject:nil afterDelay:2.5];
    }
    if ([iTCompany respondsToSelector:@selector(dividingLine)]) {
        [iTCompany performSelector:@selector(dividingLine) withObject:nil afterDelay:2.5];
    }

}
//HR Отдел-----------------------------------------------------------------
- (void)hRDepartment
{
    HRDepartment * hRCompany = [[HRDepartment alloc] init];
    //Сотрудники IT
    [hRCompany initEmployeesIT]; //Инициализация массива сотрудников IT отдела
    [hRCompany dividingLine];
    NSLog(@"Сотрудники IT отдела");
    [hRCompany.employeesIT addObject:@"Соколов Генадий вавлович"];
    [hRCompany.employeesIT addObject:@"Некрасов Альберт Петрович"];
    [hRCompany.employeesIT addObject:@"Жугалев Фёдр Александрович"];
    [hRCompany.employeesIT addObject:@"Коврижкин Сергей Викторович"];
    for (int i = 0; i < hRCompany.employeesIT.count; i++) {
        NSLog(@"%i. %@", i+1, [hRCompany.employeesIT objectAtIndex:(i)]);
    }
    //Сотрудники HR
    [hRCompany initEmployeesHR]; //Инициализация массива сотрудников HR отдела
    [hRCompany dividingLine];
    NSLog(@"Сотрудники HR отдела");
    [hRCompany.employeesHR addObject:@"Гаврилова Нина Фёдоровна"];
    [hRCompany.employeesHR addObject:@"Елизовета Анна Павловна"];
    [hRCompany.employeesHR addObject:@"Несферидзе Аганеш Ашотовна"];
    for (int i = 0; i < hRCompany.employeesHR.count; i++) {
        NSLog(@"%i. %@", i+1, [hRCompany.employeesHR objectAtIndex:(i)]);
    }
    //Сотрудники фин. отдела
    [hRCompany initEmployeesFin]; //Инициализация массива сотрудников Фин отдела
    [hRCompany dividingLine];
    NSLog(@"Сотрудники Финансового отдела");
    [hRCompany.employeesFin addObject:@"Гаврилова Ольга Павловна"];
    [hRCompany.employeesFin addObject:@"Доможирова Анна Сергеевна"];
    for (int i = 0; i < hRCompany.employeesFin.count; i++) {
        NSLog(@"%i. %@", i+1, [hRCompany.employeesFin objectAtIndex:(i)]);
    }
    //Сотрудники Адм. отдела
    [hRCompany initEmployeesAdm]; //Инициализация массива сотрудников Адм отдела
    [hRCompany dividingLine];
    NSLog(@"Сотрудники Административного отдела");
    [hRCompany.employeesADM addObject:@"Кузнецов Сергей Николаевич"];
    [hRCompany.employeesADM addObject:@"Салимзянов Саид Тофикович"];
    for (int i = 0; i < hRCompany.employeesADM.count; i++) {
        NSLog(@"%i. %@", i+1, [hRCompany.employeesADM objectAtIndex:(i)]);
    }

}
//Фин. Отдел-----------------------------------------------------------------
- (void)finDepartment
{
    FinancialDepartment* finCompany = [[FinancialDepartment alloc] init];
    [finCompany staffSalaries];
    [finCompany dividingLine];
    [finCompany printPaymentOfWages];
    [finCompany dividingLine];
    [finCompany dividingLine];
}
//----------------------------------------------------------------------------

@end
