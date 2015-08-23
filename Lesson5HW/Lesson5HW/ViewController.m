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

@property (nonatomic,strong) NSArray * arrayData; //Создаём массив для хранения информации
@property (weak, nonatomic) IBOutlet UITableView *TableView; //Свойтсво таблицы

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setYouName:@"Viktor"];
    
    [self performSelector:@selector(start) withObject:nil afterDelay:2.0f];


}

- (void) start {
    
    MyCompany * company = [MyCompany new];
    company.delegate = self;
   [company myConpanyInfo];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - MyCompanyDelegate

// Копируем данные из массива класса MyCompany в массив AppDelegate---------
- (void) protocolMethod: (MyCompany *) protocols string: (NSMutableArray*) array {
    
    self.arrayData = [[NSArray alloc] initWithArray:array];
    [self reloadTableView];
    
}
//Обязательный к выполнению метод ------------------------------------------
- (void) setYouName: (NSString*) string { //Введите ваше имя
    NSLog(@"You name: %@", string);
}
// Метод анимации таблицы---------------------------------------------------
- (void) reloadTableView {
    
    [self.TableView reloadSections:[NSIndexSet indexSetWithIndex:0]
                  withRowAnimation:UITableViewRowAnimationLeft];
    
}

#pragma mark - UITableViewDelegate


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - UITableViewDataSource
//Метод для определение колличества срок в таблице---------------------------
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrayData.count;
}

//Метод задающий свойства и данные каждой ячейки-----------------------------

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"]; //Идетификация яцейки
    //Нумерация ячеек в таблице начнается также как и у массива arrayData----
    
    NSDictionary * dictData = [self.arrayData objectAtIndex:indexPath.row];
    //-----------------------------------------------------------------------
    UIImageView * face; //создаём в ячейке картинку
    UILabel * name; //создам в ячейке строку 1
    UILabel * position; //создам в ячейке строку 2
    UILabel * hobby; //создам в ячейке строку 3
    //Задаём параметры строки1-----------------------------------------------
    name = (UILabel*) [cell.contentView viewWithTag:1001];
    name.text = [dictData objectForKey:@"name"];
    //Задаём параметры строки2-----------------------------------------------
    position = (UILabel*) [cell.contentView viewWithTag:1003];
    position.text = [dictData objectForKey:@"position"];
    //Задаём параметры строки3-----------------------------------------------
    hobby = (UILabel*) [cell.contentView viewWithTag:1004];
    hobby.text = [dictData objectForKey:@"hobby"];
    //Задаём параметры картинки----------------------------------------------
    face = (UIImageView *) [cell.contentView viewWithTag:1002];
    face.image = [UIImage imageNamed:[dictData objectForKey:@"face"]];
    
    return cell;
}

@end
