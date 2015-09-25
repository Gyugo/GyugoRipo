//
//  ViewController.h
//  Lesson3HW
//
//  Created by Viktor on 20.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Animathion.h"
#import "CustomAnatation.h"
#import "CustomMapPinView.h"


@interface ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate> {
    BOOL isCurrentLocation;
    BOOL isRendered;
    
}
@property (weak, nonatomic) IBOutlet UIButton *buttonBackToMainMenu;
@property (weak, nonatomic) IBOutlet UIView *barViewMapView;
@property (weak, nonatomic) IBOutlet UILabel *labelButtonBackToMainMenu;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) CLLocationManager * locationManager;
@property (nonatomic, strong) CLLocation * currentLocation;


@end

