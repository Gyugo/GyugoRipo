//
//  ViewController.m
//  Lesson3HW
//
//  Created by Viktor on 20.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) NSInteger testInt;
@property (strong, nonatomic) NSDictionary * dictTest;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    

    isRendered = NO;
    
    [self centerOnUserLocation];

    //Градиент основного view-------------------------------------------------------
    CAGradientLayer* gradient = [CAGradientLayer layer]; //создание градиента
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor],
                               (id)[[UIColor redColor] CGColor],
                               (id)[[UIColor whiteColor] CGColor],
                               nil];
    [self.view.layer insertSublayer:gradient atIndex:0];

    //Параметры barView--------------------------------------------------------------
    self.barViewMapView.backgroundColor = [UIColor clearColor];

    //Параметры кнопки возврата  в основное меню-------------------------------------
    self.buttonBackToMainMenu.backgroundColor = [UIColor clearColor];
    self.buttonBackToMainMenu.layer.borderColor = [UIColor blackColor].CGColor;
    self.buttonBackToMainMenu.layer.borderWidth = 2.f;
    self.buttonBackToMainMenu.layer.cornerRadius = 5.f;
    [self.buttonBackToMainMenu addTarget:self action:@selector(tapButtonBackToMainMenu) forControlEvents:UIControlEventTouchDown];
    [self.buttonBackToMainMenu addTarget:self action:@selector(actionButtonBackToMainMenu) forControlEvents:UIControlEventTouchUpInside];

    //Параметры layerButtonBackToMainMenu--------------------------------------------

    self.labelButtonBackToMainMenu.text = @"<< Main Menu";
    self.labelButtonBackToMainMenu.textColor = [UIColor redColor];

    //Параметры Карты----------------------------------------------------------------

    isCurrentLocation = NO;
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager requestAlwaysAuthorization];

    [self.locationManager startUpdatingLocation];
    self.locationManager.delegate = self;
}

- (void)setPins
{

    //Местоположение оффиса Донская-------------
    NSNumber* donskayaOfficeLat = [NSNumber numberWithDouble:43.62272587725018];
    NSNumber* donskayaOfficeLon = [NSNumber numberWithDouble:39.72063213586807];
    //Местоположение оффиса Макаренко-----------
    NSNumber* makarenkoOfficeLat = [NSNumber numberWithDouble:43.61313337851263];
    NSNumber* makarenkoOfficeLon = [NSNumber numberWithDouble:39.74190205335617];
    //Местоположение оффиса Московская----------
    NSNumber* moskovskayaOfficeLat = [NSNumber numberWithDouble:43.59322891801368];
    NSNumber* moskovskayaOfficeLon = [NSNumber numberWithDouble:39.7248874604702];
    //Местоположение оффиса Чебрикова-----------
    NSNumber* chebrikovaOfficeLat = [NSNumber numberWithDouble:43.59646520071766];
    NSNumber* chebrikovaOfficeLon = [NSNumber numberWithDouble:39.73404787480831];
    //Местоположение оффиса Роз-----------------
    NSNumber* rozOfficeLat = [NSNumber numberWithDouble:43.59359412549407];
    NSNumber* rozOfficeLon = [NSNumber numberWithDouble:39.72397282719612];

    //Создание коллекция офисов--------------------------------------------------------

    NSDictionary* donskayaOfficeDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                 donskayaOfficeLat, @"lat",
                                                             donskayaOfficeLon, @"lon", nil];

    NSDictionary* makarenkoOfficeDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                  makarenkoOfficeLat, @"lat",
                                                              makarenkoOfficeLon, @"lon", nil];

    NSDictionary* moskovskayaOfficeDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                    moskovskayaOfficeLat, @"lat",
                                                                moskovskayaOfficeLon, @"lon", nil];

    NSDictionary* chebrikovaOfficeDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                                   chebrikovaOfficeLat, @"lat",
                                                               chebrikovaOfficeLon, @"lon", nil];

    NSDictionary* rozOfficeDict = [[NSDictionary alloc] initWithObjectsAndKeys:
                                                            rozOfficeLat, @"lat",
                                                        rozOfficeLon, @"lon", nil];

    //Создание массива всех офисов-------------------------------------------------------
    NSArray* arrayOffices = [[NSArray alloc] initWithObjects:donskayaOfficeDict, makarenkoOfficeDict,
                                             moskovskayaOfficeDict, chebrikovaOfficeDict,
                                             rozOfficeDict, nil];

    for (int i = 0; i < arrayOffices.count; i++) {
        NSDictionary* dict = [arrayOffices objectAtIndex:i];
        double lat = [[dict objectForKeyedSubscript:@"lat"] floatValue];
        double lon = [[dict objectForKeyedSubscript:@"lon"] floatValue];

        self.testInt = i;
        //Создаём анотацию с кастомной инициализацией--------------------------------------
        CustomAnatation* anotationOffice = [[CustomAnatation alloc] initWithLatitude:lat andLongitude:lon];
        //Добавляем соответствующую аннотацию-----------------------------------------------
        anotationOffice.info = [[NSDictionary alloc] initWithObjectsAndKeys:@"Text", @"key", nil];
        [self.mapView addAnnotation:anotationOffice];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Действие Тапа кнопки возврата в основное меню--------------------------------------
- (void)tapButtonBackToMainMenu
{

    [Animathion animationAlphaLabel:self.labelButtonBackToMainMenu alpha:0.1f];
}

//Действие кнопки возврата в основное меню-------------------------------------------
- (void)actionButtonBackToMainMenu
{
    [Animathion animationAlphaLabel:self.labelButtonBackToMainMenu alpha:1.f];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

#pragma mark - CLLocationManagerDelegate
//Приближение карты к нужному месту---------------------------------------------------
- (void)locationManager:(CLLocationManager*)manager
    didUpdateToLocation:(CLLocation*)newLocation
           fromLocation:(CLLocation*)oldLocation __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_6, __MAC_NA, __IPHONE_2_0, __IPHONE_6_0)
{

    if (!isCurrentLocation) {

        isCurrentLocation = YES;

        
    }
}
//оцентровка карты-------------------------------------------
- (void)centerOnUserLocation
{

    CLLocationCoordinate2D myCentr;
    myCentr.latitude = 43.61170408172558;
    myCentr.longitude = 39.74661335349083;

    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(myCentr, 7000, 7000);

    [self.mapView setRegion:region animated:YES];
}

#pragma mark - MKMapViewDelegate

//Добавление и параметры пинов на карте---------------------------------------------------

- (MKAnnotationView*)mapView:(MKMapView*)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{

    if (![annotation isKindOfClass:[MKUserLocation class]]) {

        CustomMapPinView* customPin = [[CustomMapPinView alloc] initWithImage];
        
        self.dictTest = [[NSDictionary alloc] initWithObjectsAndKeys:customPin, @"pin", nil];
        

        return customPin;
    }

    return nil;
}

//Метод срабатывающий после загрузки map--------------------------------------------------
- (void)mapViewDidFinishRenderingMap:(MKMapView*)mapView fullyRendered:(BOOL)fullyRendered
{

    if (fullyRendered) {

        if (!isRendered) {
            isRendered = YES;
            
            [self performSelector:@selector(setPins) withObject:nil afterDelay:2.f];
        }
    }
}
//Положение пинов на карте-----------------------------------------------------------------
- (void)mapView:(MKMapView*)mapView didAddAnnotationViews:(NSArray*)views
{

    for (CustomMapPinView* view in views) {

        if (![view.annotation isKindOfClass:[MKUserLocation class]]) {

            view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y - self.view.frame.size.height - 700,
                view.frame.size.width, view.frame.size.height);

            [UIView animateWithDuration:0.3f
                delay:0.07 * [views indexOfObject:view]
                options:0.f
                animations:^{

                    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y + self.view.frame.size.height + 700,
                        view.frame.size.width, view.frame.size.height);

                }
                completion:^(BOOL finished){

                }];
        }
    }
}
//Метод действия при выборе аннотации-------------------------------------------------------
- (void)mapView:(MKMapView*)mapView didSelectAnnotationView:(MKAnnotationView*)view
{

    for (UIView* myView in view.subviews) {

            if (myView.tag == 25) {

                [Animathion animationAlphaLabel:myView alpha:1.f];
                CustomAnatation * an = view.annotation;
                CustomAnatation * anotationOffice = (CustomAnatation*) an;
                CustomMapPinView * v = (CustomMapPinView*) view;
                
            }
        }
}
//Метод при при отсутствии выбранной анатации-----------------------------------------------
- (void)mapView:(MKMapView*)mapView didDeselectAnnotationView:(MKAnnotationView*)view
{

    for (UIView* myView in view.subviews) {

        if (myView.tag == 25) {

            [Animathion animationAlphaLabel:myView alpha:0.f];
        }
    }
}

@end
