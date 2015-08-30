//
//  ViewController.m
//  Test
//
//  Created by Viktor on 30.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "TableViewMain.h"
#import "ViewControllerDetail.h"
#import "Macros.h"

@interface TableViewMain () <UITabBarDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSMutableArray* arrayEvents;
@property (weak, nonatomic) IBOutlet UIButton* buttonAdd;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation TableViewMain

- (void)viewDidLoad
{

    [self.buttonAdd addTarget:self action:@selector(buttonAd)
             forControlEvents:UIControlEventTouchUpInside];
    [super viewDidLoad];
    
    //Метод возвращает текущую нотификайию---------------------------------
    NSArray * array = [[UIApplication sharedApplication] scheduledLocalNotifications];
    self.arrayEvents = [[NSMutableArray alloc] initWithArray:array];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reloadTableViewWhenNewEvent) name: NOTIFICATION_TABLE_VIEW_TO_DO_LIST object:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Удаление нотификации-------------------------------------------------------
- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//Перезагрузка таблицы при новом событии-------------------------------------
- (void) reloadTableViewWhenNewEvent {
    
    
    [self.arrayEvents removeAllObjects];
    
    
    NSArray * array = [[UIApplication sharedApplication] scheduledLocalNotifications];
    self.arrayEvents = [[NSMutableArray alloc] initWithArray:array];
    
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0]
                  withRowAnimation:UITableViewRowAnimationFade];
    
}



#pragma mark - UITabBarDelegate
//анимация нажатия кнопки
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UILocalNotification * notification = [self.arrayEvents objectAtIndex:indexPath.row];
    
    NSDictionary * dict = notification.userInfo;
    
    ViewControllerDetail * detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    detailView.eventInfo = [dict objectForKey:@"eventInfo"];
    detailView.eventDate = notification.fireDate;
    detailView.isDetail = YES;
    
    
    [self.navigationController pushViewController:detailView animated:YES];
}


#pragma mark - UITableViewDataSource
//Метол определения строк в таблице-------------------------------------------
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.arrayEvents.count;
}
//Метод свойств каждой ячейки---------------------------------------------------
- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{

    NSString* identifier = @"Cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    UILocalNotification * notification = [self.arrayEvents objectAtIndex:indexPath.row];
    
    NSDictionary * dict = notification.userInfo;
    
    cell.textLabel.text = [dict objectForKeyedSubscript:@"eventInfo"];
    cell.detailTextLabel.text = [dict objectForKeyedSubscript:@"eventDate"];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        UILocalNotification * notification = [self.arrayEvents objectAtIndex:indexPath.row];
        
        [[UIApplication sharedApplication] cancelLocalNotification:notification];
        [self.arrayEvents removeObjectAtIndex:indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
    
}

//Метод кнопки ButtonAdd----------------------------------------------------
- (void)buttonAd
{
    ViewControllerDetail* detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    [self.navigationController pushViewController:detail animated:YES];
}

@end
