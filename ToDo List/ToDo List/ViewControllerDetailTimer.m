//
//  ViewControllerDetailTimer.m
//  ToDo List
//
//  Created by Viktor on 10.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewControllerDetailTimer.h"

@interface ViewControllerDetailTimer ()

@end

@implementation ViewControllerDetailTimer

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Параметры buttonBackTimer------------------------------
    [self.buttonBackTimer addTarget:self action:@selector(actionButtonBackTimer)
                               forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Действие кнопки buttonBackTimer-----------------------------
- (void) actionButtonBackTimer {
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
