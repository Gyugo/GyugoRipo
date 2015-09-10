//
//  ViewController.m
//  ToDo List
//
//  Created by Viktor on 06.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "TableToDoList.h"
#import "ViewControllerDetailToDoList.h"

@interface TableToDoList () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray * mArrayEvents ; //Основной массив

@end

@implementation TableToDoList


- (void)viewDidLoad {
    
    //Создание массива-----------------------------------------------
    NSArray * array = [[UIApplication sharedApplication] scheduledLocalNotifications];
    self.mArrayEvents = [[NSMutableArray alloc] initWithArray:array];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTableViewWhenNewEvent) name:@"NewEvent" object:nil];
    
    
    
    [super viewDidLoad];
    
    //Параметры mainView--------------------------------------------
    
    CAGradientLayer * gradientViewMain = [CAGradientLayer layer];
    gradientViewMain.frame = self.view.bounds;
    gradientViewMain.colors = [NSArray arrayWithObjects: (id)[[UIColor whiteColor] CGColor],
                                                         (id)[[UIColor yellowColor] CGColor],
                                                         (id)[[UIColor greenColor] CGColor],nil];
    [self.view.layer insertSublayer:gradientViewMain atIndex:0];
    
    //Параметры TableView-------------------------------------------
    
    self.tableViewToDoList.backgroundColor = [UIColor clearColor];
    
    //Параметры Bar Table--------------------------------------------
    self.viewBarTableToDoList.backgroundColor = [UIColor clearColor];
    self.viewBarTableToDoList.layer.borderColor = [UIColor whiteColor].CGColor;
    self.viewBarTableToDoList.layer.borderWidth = 2.f;
    self.viewBarTableToDoList.layer.cornerRadius = 5.f;
    
    //Параметры buttonAdd Table---------------------------------------
    self.buttonAddTableViewToDoList.backgroundColor = [UIColor clearColor];
    self.buttonAddTableViewToDoList.tintColor = [UIColor whiteColor];
    [self.buttonAddTableViewToDoList addTarget:self
                                        action:@selector(actionButtonAddTableViewToDoList)
                              forControlEvents:UIControlEventTouchUpInside];
    
    //lableButtonAdd----------------------------------------------------
    self.lableButtonAdd.textColor = [UIColor colorWithRed:0.09f green:0.36f blue:0.03f alpha:1.f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Удаление нотификации------------------------------------------------

- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}



//Перезагрузка таблицы-------------------------------------------------
- (void) reloadTableViewWhenNewEvent {
    
    [self.mArrayEvents removeAllObjects]; 
    
    NSArray * array = [[UIApplication sharedApplication] scheduledLocalNotifications];
    self.mArrayEvents = [[NSMutableArray alloc] initWithArray:array];
    
    [self.tableViewToDoList reloadSections:[NSIndexSet indexSetWithIndex: 0]
                          withRowAnimation:UITableViewRowAnimationFade];
    
}

#pragma mark - UITableViewDataSource

//колличество ячеек в таблице------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.mArrayEvents.count;
    
}

//Параметры ячейки-----------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * identifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier
                                                             forIndexPath:indexPath];
    
    UILocalNotification * notification = [self.mArrayEvents objectAtIndex:indexPath.row];
    
    NSDictionary * dict = notification.userInfo;
    
    cell.textLabel.text = [dict objectForKey:@"eventInfo"];
    cell.detailTextLabel.text = [dict objectForKey:@"eventDate"];
    cell.textLabel.textColor = [UIColor blackColor];
    cell.detailTextLabel.textColor = [UIColor blackColor];
    
    return cell;
}
//Реализация кнопки buttonAdd----------------------
     - (void) actionButtonAddTableViewToDoList {
         
         ViewControllerDetailToDoList * detail =
         [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
//-------------
         [self.navigationController pushViewController:detail animated:YES];
     }

#pragma mark - UITableViewDelegate 

//Анимация нажатия ячейки--------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UILocalNotification * notification = [self.mArrayEvents objectAtIndex:indexPath.row];
    
    NSDictionary * dict = notification.userInfo;
    ViewControllerDetailToDoList * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    detail.eventInfo = [dict objectForKey:@"eventInfo"];
    detail.eventDate = notification.fireDate;
    detail.isDetail = YES;
    
    [self.navigationController pushViewController:detail animated:YES];
    
}

#pragma mark - delete cell

//Удаление ячейки-------------------------------------------------------------------------

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}

- (void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
                                             forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        UILocalNotification * notification = [self.mArrayEvents objectAtIndex:indexPath.row];
        [[UIApplication sharedApplication] cancelLocalNotification:notification];
        
        [self.mArrayEvents removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}

@end
