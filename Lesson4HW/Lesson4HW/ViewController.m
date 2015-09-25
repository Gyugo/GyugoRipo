//
//  ViewController.m
//  Lesson4HW
//
//  Created by Viktor on 24.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "Animathion.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView* viewNumber0;
@property (weak, nonatomic) IBOutlet UIView* viewNumber1;
@property (weak, nonatomic) IBOutlet UIView* viewNumber2;
@property (weak, nonatomic) IBOutlet UIView* viewNumber3;
@property (weak, nonatomic) IBOutlet UIView* viewNumber4;
@property (weak, nonatomic) IBOutlet UIView* viewNumber5;
@property (weak, nonatomic) IBOutlet UIView* viewNumber6;
@property (weak, nonatomic) IBOutlet UIView* viewNumber7;
@property (weak, nonatomic) IBOutlet UIView* viewNumber8;
@property (weak, nonatomic) IBOutlet UIView* viewNumber9;
@property (weak, nonatomic) IBOutlet UIView* viewNumber10;
@property (weak, nonatomic) IBOutlet UIView* viewNumber11;
@property (strong, nonatomic) NSMutableArray* array;
@property (assign, nonatomic) NSInteger intCount;
@property (strong, nonatomic) UIView* timeView;
@property (weak, nonatomic) IBOutlet UILabel* labelTime;
@property (assign, nonatomic) NSInteger labelInt;
@property (weak, nonatomic) IBOutlet UIButton* buttonSratr;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //Параметры кнопки----------------------------------------------------
    self.buttonSratr.backgroundColor = [UIColor clearColor];
    self.buttonSratr.layer.borderColor = [UIColor blackColor].CGColor;
    self.buttonSratr.layer.borderWidth = 3.f;
    self.buttonSratr.layer.cornerRadius = 5.f;

    [self.buttonSratr addTarget:self
                         action:@selector(actionButtonStart)
               forControlEvents:UIControlEventTouchUpInside];

    //Параметры основного view---------------------------------------------
    CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor],
                               (id)[[UIColor blueColor] CGColor],
                               (id)[[UIColor whiteColor] CGColor], nil];
    [self.view.layer insertSublayer:gradient atIndex:0];

    //Массив timeView--------------------------------------------------------

    self.array = [[NSMutableArray alloc] initWithObjects:self.viewNumber0, self.viewNumber1, self.viewNumber2,
                                         self.viewNumber3, self.viewNumber4, self.viewNumber5,
                                         self.viewNumber6, self.viewNumber7, self.viewNumber8,
                                         self.viewNumber9, self.viewNumber10, self.viewNumber11, nil];
    for (UIView* view in self.array) {

        //Изменение каждого элемента timeView--------------------------------

        view.backgroundColor = [UIColor clearColor];
        view.layer.borderColor = [UIColor blackColor].CGColor;
        view.layer.borderWidth = 3.f;
        view.layer.cornerRadius = 20.f;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Метод создания таймера--------------------------------------------------------
- (void)makeCount
{
    @synchronized(self)
    {
        self.labelInt = 0;
        self.intCount = 0;
        self.timeView = [UIView new];
        for (int i = 0; i <= 59000; i++) {

            NSLog(@"%i", i);

            if (i % 1000 == 0) {
                self.labelInt++;
                //Вызов основного потока---------------------------------------------------------
                dispatch_async(dispatch_get_main_queue(), ^{

                    self.labelTime.text = [NSString stringWithFormat:@"%d", self.labelInt - 1];


                });
            }

            if (i % 5000 == 0) {

                self.intCount++;
                //Вызов основного потока---------------------------------------------------------
                dispatch_async(dispatch_get_main_queue(), ^{

                    if ([self.array objectAtIndex:self.intCount - 1]) {
                        for (UIView* view in self.array) {

                            [Animathion animateColor:view color:[UIColor clearColor]];
                        }
                        self.timeView = [self.array objectAtIndex:self.intCount - 1];

                        [Animathion animateColor:self.timeView color:[UIColor whiteColor]];
                    }

                });
            }
        }
    }
}

//Действия buttonStart-----------------------------------------------------------
- (void)actionButtonStart
{

    //Реализация счётика в паралельном потоке-----------------------------------------
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

    dispatch_async(queue, ^{

        [self makeCount];

    });

    //сброс цвета на всех timeView------------------------------------------------
    for (UIView* view in self.array) {

        view.backgroundColor = [UIColor clearColor];
    }
}

@end
