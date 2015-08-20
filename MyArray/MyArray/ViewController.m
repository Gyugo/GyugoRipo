//
//  ViewController.m
//  MyArray
//
//  Created by Viktor on 20.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"
#import "MyArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyArray * myObject = [[MyArray alloc] init];
    [myObject initArray];
    [myObject.mArray addObject:@"Name"];
    NSLog(@"%@", myObject.mArray);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
