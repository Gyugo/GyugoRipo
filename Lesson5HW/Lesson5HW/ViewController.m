//
//  ViewController.m
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "MyCompany.h"

@interface ViewController () <MyCompanyDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray* arrayData; //Создаём массив для хранения информации

@property (nonatomic, strong) NSArray* arrayWorkPlace; //Создаём массив для хранения рабочих мест

@property (weak, nonatomic) IBOutlet UITableView* TableView; //Свойтсво таблицы

- (IBAction)buttontest:(id)sender; // Кнопка о сотрудниках

- (IBAction)buttonWorkSpace:(id)sender; // Кнопка рабочие места

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    MyCompany* companyWorkPlace = [MyCompany new];
    companyWorkPlace.delegate = self;
    [companyWorkPlace myConpanyWorkPlace];
}

//Свойства Кнопок----------------------------------------------------------------
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttontest:(id)sender
{
    MyCompany* companyInfo = [MyCompany new];
    companyInfo.delegate = self;
    [companyInfo myConpanyInfo];
}

- (IBAction)buttonWorkSpace:(id)sender
{
    MyCompany* companyWorkPlace = [MyCompany new];
    companyWorkPlace.delegate = self;
    [companyWorkPlace myConpanyWorkPlace];
}
//---------------------------------------------------------------------------------
#pragma mark - MyCompanyDelegate

//Копируем данные из массива класса MyCompany в массив AppDelegate---------
- (void)protocolMethodInfo:(MyCompany*)protocols string:(NSMutableArray*)array
{
    self.arrayData = [[NSArray alloc] initWithArray:array];
    [self reloadTableView];
}

- (void)protocolMethodWorkPlace:(MyCompany*)protocols string:(NSMutableArray*)arrayWP
{
    self.arrayWorkPlace = [[NSArray alloc] initWithArray:arrayWP];
    [self reloadTableView];
}

// Метод анимации таблицы-----------------------------------------------------------
- (void)reloadTableView
{

    [self.TableView reloadSections:[NSIndexSet indexSetWithIndex:0]
                  withRowAnimation:UITableViewRowAnimationLeft];
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UITableViewDataSource
//Метод для определение колличества строк в таблице--------------------------------
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayWorkPlace.count;
}

//Метод задающий свойства и данные каждой ячейки------------------------------------

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath {
    
    static NSString* identifier = @"Cell";
    static NSString* identifier1 = @"Cell1";
    NSDictionary* dictPlace = [self.arrayWorkPlace objectAtIndex:indexPath.row];
    
    if ([dictPlace objectForKey:@"ram"]) {
        
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier1 forIndexPath:indexPath];
        
        UILabel* init; //создаём ячейку инициалы
        UILabel* proc; //создаём ячейку процессор
        UILabel* ram; //создаём ячейку оперативная память
        UILabel* os; //создаём ячейку операционная система
        //Задаём параметры строки иницыалы------------------------------------------------
        init = (UILabel*)[cell.contentView viewWithTag:1010];
        init.text = [dictPlace objectForKey:@"init"];
        //Задаём параметры строки процессор-----------------------------------------------
        proc = (UILabel*)[cell.contentView viewWithTag:1011];
        proc.text = [dictPlace objectForKey:@"proc"];
        //Задаём параметры строки оперативная память--------------------------------------
        ram = (UILabel*)[cell.contentView viewWithTag:1012];
        ram.text = [dictPlace objectForKey:@"ram"];
        //Задаём параметры строки процессор-----------------------------------------------
        os = (UILabel*)[cell.contentView viewWithTag:1013];
        os.text = [dictPlace objectForKey:@"os"];
        
        return cell;
        
    } else {
    
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        
        NSDictionary* dictData = [self.arrayData objectAtIndex:indexPath.row];
        //--------------------------------------------------------------------------------
        UIImageView* face; //создаём в ячейке картинку
        UILabel* name; //создам в ячейке строку 1
        UILabel* position; //создам в ячейке строку 2
        UILabel* hobby; //создам в ячейке строку 3
        //Задаём параметры строки1--------------------------------------------------------
        name = (UILabel*)[cell.contentView viewWithTag:1001];
        name.text = [dictData objectForKey:@"name"];
        //Задаём параметры строки2--------------------------------------------------------
        position = (UILabel*)[cell.contentView viewWithTag:1003];
        position.text = [dictData objectForKey:@"position"];
        //Задаём параметры строки3--------------------------------------------------------
        hobby = (UILabel*)[cell.contentView viewWithTag:1004];
        hobby.text = [dictData objectForKey:@"hobby"];
        //Задаём параметры картинки-------------------------------------------------------
        face = (UIImageView*)[cell.contentView viewWithTag:1002];
        face.image = [UIImage imageNamed:[dictData objectForKey:@"face"]];
        
        return cell;
    }
    

}
    


@end
