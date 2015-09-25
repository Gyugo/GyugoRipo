//
//  Board.m
//  Lesson2HW
//
//  Created by Viktor on 16.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "Board.h"

@implementation Board

//Создание основного view доски----------------------------------------------------
- (void)creationMainViewBoard:(UIView*)view
{

    UIView* mainViewBoard = [[UIView alloc] initWithFrame:CGRectMake(44.f, 178.f, 680.f, 680.f)];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg.jpg"]];
    [mainViewBoard addSubview:backgroundView];
    mainViewBoard.userInteractionEnabled = NO;
    [view addSubview:mainViewBoard];
}

//Создание ячеек доски--------------------------------------------------------------
- (void)creationBoardCells:(UIView*)view
{

    CGPoint myPoint = CGPointMake(84.f, 218.f);

    for (int i = 0; i <= 7; i++) {
        for (int j = 0; j <= 7; j++) {

            if (j % 2 != i % 2) {

                CGRect cellBoard = CGRectMake(75.f * j + myPoint.x, 75.f * i + myPoint.y, 75.f, 75.f);
                UIView* viewBoard = [[UIView alloc] initWithFrame:cellBoard];
                viewBoard.userInteractionEnabled = NO;
                viewBoard.backgroundColor = [UIColor colorWithHexString:@"80461B"];
                [view addSubview:viewBoard];
            }
            else {
                CGRect cellBoard = CGRectMake(75.f * j + myPoint.x, 75.f * i + myPoint.y, 75.f, 75.f);
                UIView* viewBoard = [[UIView alloc] initWithFrame:cellBoard];
                viewBoard.userInteractionEnabled = NO;
                viewBoard.backgroundColor = [UIColor colorWithHexString:@"F5DEB3"];
                [view addSubview:viewBoard];
            }
        }
    }
    [self blackBorder:view];
}

//Создание границы доски-------------------------------------------------------------
- (void)blackBorder:(UIView*)view
{

    UIView* border = [[UIView alloc] initWithFrame:CGRectMake(82.f, 216.f, 604.f, 604.f)];
    border.backgroundColor = [UIColor clearColor];
    border.layer.borderColor = [UIColor blackColor].CGColor;
    border.layer.borderWidth = 2.f;
    border.userInteractionEnabled = NO;
    [view addSubview:border];
}

//Создание Букв
- (void) creationChar: (UIView *) view{
    
    for (int i = 0; i <= 7; i++) {
        CGPoint myPoint = CGPointMake(75 * i, 75 * i);
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(115 + myPoint.x, 825, 25, 25)];
        textLabel.font = [UIFont systemFontOfSize:27];
        textLabel.adjustsFontSizeToFitWidth = YES;
        textLabel.userInteractionEnabled = NO;
        textLabel.textColor = [UIColor lightGrayColor];
        char cr = 'A'+i;
        NSString * objectString = [NSString stringWithFormat:@"%c",cr];
        textLabel.text = objectString;
        
        [view addSubview:textLabel];
        
    }
}

//Создание цыфр
- (void) creationNumber: (UIView *) view{
    
    for (int i = 0; i <= 7; i++) {
        CGPoint myPoint = CGPointMake(75 * i, 75 * i);
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(55, 770 - myPoint.y, 25, 25)];
        textLabel.font = [UIFont systemFontOfSize:27];
        textLabel.adjustsFontSizeToFitWidth = YES;
        textLabel.userInteractionEnabled = NO;
        textLabel.textColor = [UIColor lightGrayColor];
        NSInteger integ = 1+i;
        NSString * objectString = [NSString stringWithFormat:@"%d",integ];
        textLabel.text = objectString;
        
        [view addSubview:textLabel];
        
    }
}


@end
