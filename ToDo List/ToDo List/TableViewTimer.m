//
//  TableViewTimer.m
//  ToDo List
//
//  Created by Viktor on 10.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "TableViewTimer.h"
#import "ViewControllerDetailTimer.h"
#import "UIColor+HexColor.h"

@interface TableViewTimer () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray * mArrayTimer;

@end

@implementation TableViewTimer

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Параметры кнопки buttonMainMenuTimer----------------------------------------
    
    self.buttonMainMenuTimer.backgroundColor = [UIColor colorWithHexString:@"20b2aa"];
    [self.buttonMainMenuTimer addTarget:self action:@selector(actionButtonMainMenuTimer)
                                   forControlEvents:UIControlEventTouchUpInside];
    
    //Параметры кнопки buttonAddTimer---------------------------------------------
    [self.buttonAddTimer addTarget:self action:@selector(actionButtonAddTimer)
                              forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Действие кнопки buttonMainMenuTimer-------------------------------------
- (void) actionButtonMainMenuTimer {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

//Действие кнопки buttonAddTimer------------------------------------------
- (void) actionButtonAddTimer {
    
    ViewControllerDetailTimer * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailTimer"];
    [self.navigationController pushViewController:detail animated:YES];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.mArrayTimer.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * identifier = @"Cell1";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    return cell;
    
}


#pragma mark - UITableViewDelegate

@end
