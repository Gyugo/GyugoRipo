//
//  ViewController.m
//  Lesson2HW
//
//  Created by Viktor on 15.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "Board.h"

@interface ViewController ()
@property (strong, nonatomic) UIView* contentView;
@property (strong, nonatomic) UIButton* mytestButton;
@property (strong, nonatomic) UIView* anotherView;
@property (nonatomic, assign) CGPoint dif;
@property (nonatomic, strong) NSMutableArray* images;
@property (nonatomic, strong) NSMutableArray* viewImaged;
@property (nonatomic, assign) CGPoint myPointTest;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Параметры основного view------------------------------------------
    CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor lightGrayColor] CGColor],
                               (id)[[UIColor whiteColor] CGColor],
                               (id)[[UIColor lightGrayColor] CGColor],
                               nil];
    [self.view.layer insertSublayer:gradient atIndex:0];

    self.contentView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.contentView.backgroundColor = [UIColor blackColor];

    //Параметры доски---------------------------------------------------
    Board* myBoard = [Board new];
    [myBoard creationMainViewBoard:self.view];
    [myBoard creationBoardCells:self.view];
    [myBoard creationChar:self.view];
    [myBoard creationNumber:self.view];

    //Выставление фигур-------------------------------------------------
    [self addWhitePawnOnView];
    [self addWhiteHorseOnView];
    [self addWhiteRootOnView];
    [self addWhiteKnightOnView];
    [self addWhiteQueenKingOnView];
    [self addBlackPawnOnView];
    [self addBlackHorseOnView];
    [self addBlackRootOnView];
    [self addBlackKnightOnView];
    [self addBlackQueenKingOnView];
    
}
//Начало движения вью-------------------------------------------------
- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{

    UITouch* touch = [touches anyObject];

    CGPoint pointOfTouch = [touch locationInView:self.view];

    UIView* touthView = [self.view hitTest:pointOfTouch withEvent:event];

    if (![touthView isEqual:self.view]) {

        self.anotherView = touthView;

        CGPoint center = CGPointMake(CGRectGetMidX(self.anotherView.bounds), CGRectGetMidY(self.anotherView.bounds));
        CGPoint pointOfAnotherView = [touch locationInView:self.anotherView];
        self.dif = CGPointMake(center.x - pointOfAnotherView.x, center.y - pointOfAnotherView.y);
        [self.view bringSubviewToFront:self.anotherView];
        [UIView animateWithDuration:0.3f
                         animations:^{
                             self.anotherView.layer.shadowColor = [UIColor yellowColor].CGColor;
                             self.anotherView.layer.shadowOffset = CGSizeMake(0.0, 0.0);
                             self.anotherView.layer.shadowRadius = 20.5f;
                             self.anotherView.layer.shadowOpacity = 2.4f;
                             self.anotherView.layer.masksToBounds = NO;

                         }];
    }
    else {
        self.anotherView = nil;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
//Движения вью----------------------------------------------------------------
- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{

    UITouch* touch = [touches anyObject];

    CGPoint pointOfTouch = [touch locationInView:self.view];

    if (self.anotherView) {

        CGPoint mainPoint = CGPointMake(pointOfTouch.x + self.dif.x, pointOfTouch.y + self.dif.y);

        [UIView animateWithDuration:0.2f
                         animations:^{
                             self.anotherView.center = mainPoint;
                             self.anotherView.center = mainPoint;
                         }];
    }
}
//Оконьчание движения вью------------------------------------------------------
- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event
{

    [UIView animateWithDuration:0.3f
                     animations:^{
                         self.anotherView.layer.shadowColor = [UIColor clearColor].CGColor;
                         self.anotherView.layer.shadowOffset = CGSizeMake(0.0, 0.0);
                         self.anotherView.layer.shadowRadius = 20.5f;
                         self.anotherView.layer.shadowOpacity = 3.4f;
                         self.anotherView.layer.masksToBounds = NO;
                     }];
}
//Отмена движения вью----------------------------------------------------------
- (void)touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event
{
}

//Добавление белых пешек на поле----------------------
- (void)addWhitePawnOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"PawnWhite.png"]) {

            for (int i = 0; i <= 7; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(75.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(84.f + myPoint.x * i, 668.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление белых коней на поле----------------------
- (void)addWhiteHorseOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"HorseWhite.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(375.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(159.f + myPoint.x * i, 743.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление белых слонов на поле----------------------
- (void)addWhiteRootOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"RookWhite.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(525.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(84.f + myPoint.x * i, 743.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление белых офицерев на поле----------------------
- (void)addWhiteKnightOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"KnightWhite.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(225.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(234.f + myPoint.x * i, 743.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление белых короля и королевы на поле----------------------
- (void)addWhiteQueenKingOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"KingWhite.png"] || [name hasSuffix:@"QueenWhite.png"]) {

            for (int i = 0; i < 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(75.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(384.f - myPoint.x * i, 743.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление чёрных пешек на поле----------------------
- (void)addBlackPawnOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"PawnBlack.png"]) {

            for (int i = 0; i <= 7; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(75.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(84.f + myPoint.x * i, 293.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление чёрных коней на поле----------------------
- (void)addBlackHorseOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"HorseBlack.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(375.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(159.f + myPoint.x * i, 218.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление чёрных слонов на поле----------------------
- (void)addBlackRootOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"RookBlack.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(525.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(84.f + myPoint.x * i, 218.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление чёрных офицерев на поле----------------------
- (void)addBlackKnightOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"KnightBlack.png"]) {

            for (int i = 0; i <= 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        CGPoint myPoint = CGPointMake(225.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(234.f + myPoint.x * i, 218.f, 75.f, 75.f)];
        figuresView.tag = i;
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}
//Добавление чёрных короля и королеву на поле----------------------
- (void)addBlackQueenKingOnView
{

    self.images = [[NSMutableArray alloc] init];
    NSFileManager* manager = [NSFileManager new];
    NSBundle* bundle = [NSBundle mainBundle];
    NSDirectoryEnumerator* enumerator = [manager enumeratorAtPath:[bundle bundlePath]];

    for (NSString* name in enumerator) {
        if ([name hasSuffix:@"KingBlack.png"] || [name hasSuffix:@"QueenBlack.png"]) {

            for (int i = 0; i < 1; i++) {
                UIImage* image = [UIImage imageNamed:name];
                [self.images addObject:image];
            }
        }
    }

    for (int i = 0; i < self.images.count; i++) {

        self.myPointTest = CGPointMake(75.f, 0);

        UIView* figuresView = [[UIView alloc] initWithFrame:CGRectMake(384.f - self.myPointTest.x * i, 218.f, 75.f, 75.f)];
        figuresView.tag = i;
        
        
        [self.viewImaged addObject:[figuresView viewWithTag:i]];

        UIImageView* imagesView = [[UIImageView alloc] initWithFrame:figuresView.bounds];

        imagesView.image = [self.images objectAtIndex:i];
        [figuresView addSubview:imagesView];
        [self.view addSubview:figuresView];
    }
}

@end
