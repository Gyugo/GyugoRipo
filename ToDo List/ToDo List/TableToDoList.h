//
//  ViewController.h
//  ToDo List
//
//  Created by Viktor on 06.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableToDoList : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewBarTableToDoList;
@property (weak, nonatomic) IBOutlet UIButton *buttonAddTableViewToDoList;
@property (weak, nonatomic) IBOutlet UITableView *tableViewToDoList;
@property (weak, nonatomic) IBOutlet UILabel *lableButtonAdd;

@end

