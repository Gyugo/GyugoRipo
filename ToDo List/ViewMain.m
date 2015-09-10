//
//  ViewMain.m
//  ToDo List
//
//  Created by Viktor on 10.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewMain.h"
#import "TableToDoList.h"
#import "TableViewTimer.h"

@interface ViewMain ()

@end

@implementation ViewMain

- (void)viewDidLoad
{
    [super viewDidLoad];

    //Параметры кнопки buttonToDoList-------------------------------------
    [self.buttomToDolist addTarget:self
                            action:@selector(actionButtonToDoList)
                  forControlEvents:UIControlEventTouchUpInside];
    
    //Параметры кнопки buttonTimer----------------------------------------
    [self.buttonTimer addTarget:self action:@selector(actionButtonTimer)
                           forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Действие кнопки buttonToDoList-----------------------
- (void)actionButtonToDoList
{

    TableToDoList* detail = [self.storyboard instantiateViewControllerWithIdentifier:@"TableView"];
    [self.navigationController pushViewController:detail animated:YES];
}

//Действие кнопки buttonTimer
- (void) actionButtonTimer {
    
    TableViewTimer * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"TableTimer"];
    [self.navigationController pushViewController:detail animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
