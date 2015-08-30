//
//  ViewController.m
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "MyCompany.h"
#import "MacrosMyCompany.h"
#import "CustomTableViewCellEmployees.h"
#import "CustomTableViewCellWorkPlace.h"

@interface ViewController () <MyCompanyDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray* arrayMData; //Создаём массив для хранения информации

@property (weak, nonatomic) IBOutlet UITableView* tableView; //Свойтсво таблицы

- (IBAction)buttontest:(id)sender; // Кнопка о сотрудниках

- (IBAction)buttonWorkSpace:(id)sender; // Кнопка рабочие места

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.tableFooterView = [[UIView alloc] init];
    
    MyCompany * protocol = [MyCompany new];
    [protocol myConpanyInfo];
    
    //Создание Нотификаций--------------------------------------------------------------------------
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTableView:) name:NOTIFICATION_MY_COMPANY_TableView_Employees object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTableView:) name:NOTIFICATION_MY_COMPANY_TableView_WorkPlace object:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - MyCompanyDelegate

//Метод протокола (Обязательный)
- (void)protocolMethodInfo:(MyCompany*)protocols string:(NSMutableArray*)array
{
    self.arrayMData = [[NSMutableArray alloc] initWithArray:array];
}

// Ввод данных в таблицу------------------------------------------------------------
- (void)reloadTableView: (NSNotification *) notification
{
    [self.arrayMData removeAllObjects]; // Очистка таблицы
    //Создаём массив из коллекции класса MyCompany----------------------------------
    NSArray * arrayConpany = [notification.userInfo objectForKey:@"array"];
    
    self.arrayMData = [[NSMutableArray alloc] initWithArray:arrayConpany];

    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationLeft];
}

#pragma mark - UITableViewDelegate
//Плавная анимация нажатия на ячейку-------------------------------------------------
- (void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UITableViewDataSource

//Метод для определение колличества строк в таблице--------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrayMData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * identifier = @"Cell1"; //Создаём идентификатор ячейки1
    static NSString * identifier1 = @"Cell2";//Создаём идентификатор ячейки2
    NSDictionary * dict = [self.arrayMData objectAtIndex:indexPath.row];
    //Если ключ принадлежит данной коллекции то выполняется это условие----
    if ([dict objectForKey:@"ram"]) {
        CustomTableViewCellWorkPlace * cell = (CustomTableViewCellWorkPlace *)
        [tableView dequeueReusableCellWithIdentifier:identifier1 forIndexPath:
                                                    (NSIndexPath *)indexPath];
        cell.LaybleInitsyaly.text = [dict objectForKey:@"init"];
        cell.LaybleProcessor.text = [dict objectForKey:@"proc"];
        cell.LaybleRAM.text = [dict objectForKey:@"ram"];
        cell.LaybleOS.text = [dict objectForKey:@"os"];
        
        return cell;
    }
    //Иначе выполняется это условие------------------------------------------------
    else {
        
        CustomTableViewCellEmployees * cell = (CustomTableViewCellEmployees *)
        [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:
         (NSIndexPath *)indexPath];
        
        cell.LableName.text = [dict objectForKey:@"name"];
        cell.LablePosition.text = [dict objectForKey:@"position"];
        cell.LableHobby.text = [dict objectForKey:@"hobby"];
        NSString * imageName = [NSString stringWithFormat:@"%@.png", [dict objectForKey:@"face"]];
        cell.FaceView.image = [UIImage imageNamed:imageName];
        
        return cell;
        
    }
}

//Свойства Кнопок----------------------------------------------------------------
- (IBAction)buttontest:(id)sender
{
    MyCompany * protocol = [MyCompany new];
    [protocol myConpanyInfo];
}

- (IBAction)buttonWorkSpace:(id)sender
{
    MyCompany * protocol = [MyCompany new];
    [protocol myConpanyWorkPlace];
}

@end
