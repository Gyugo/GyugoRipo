//
//  MainView.m
//  Lesson3HW
//
//  Created by Viktor on 20.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (void) viewDidLoad {
    
    //Градиент основного view----------------------------------------------------------
    CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor],
                       (id)[[UIColor redColor] CGColor],
                       (id)[[UIColor whiteColor] CGColor],
                       nil];
    [self.view.layer insertSublayer:gradient atIndex:0];
    //Параметра barView-----------------------------------------------------------------
    self.barViewMainView.backgroundColor = [UIColor clearColor];
    
    //Параметры кнопки ButtonGoToMap----------------------------------------------------
    self.buttonGoToMap.backgroundColor = [UIColor clearColor];
    self.buttonGoToMap.layer.borderColor = [UIColor blackColor].CGColor;
    self.buttonGoToMap.layer.borderWidth = 2.f;
    self.buttonGoToMap.layer.cornerRadius = 5.f;
    [self.buttonGoToMap addTarget:self action:@selector(tapButtonGoToMap) forControlEvents:UIControlEventTouchDown];
    [self.buttonGoToMap addTarget:self action:@selector(actionButtomGoToMap) forControlEvents:UIControlEventTouchUpInside];
    
    //Параметры label ButtonGoToMap-----------------------------------------------------
    self.labelButtonGoToMap.text = @"Map >>";
    self.labelButtonBackToMainMenu.textColor = [UIColor redColor];
    self.labelButtonGoToMap.textColor = [UIColor redColor];
    
    
}

//Тап кнопки ButtonGoToMap--------------------------------------------------------------
- (void) tapButtonGoToMap {
    [Animathion animationAlphaLabel:self.labelButtonGoToMap alpha:0.1f];

    
}

//Действие кнопки ButtonGoToMap---------------------------------------------------------
- (void) actionButtomGoToMap {


    [Animathion animationAlphaLabel:self.labelButtonGoToMap alpha:1.f];
    ViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"MapView"];
    [self.navigationController pushViewController:detail animated:YES];
    
}

@end
