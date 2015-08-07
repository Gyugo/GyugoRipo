//
//  FactoryServersNetwork.m
//  HomeWork
//
//  Created by Viktor on 07.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "FactoryServersNetwork.h"

@implementation FactoryServersNetwork

- (void) startFactoryServer
{
    [self choiceOfBody];
    [self choiceOfMotherboard];
    [self installingTheMotherboard];
    [self choiseOfProcessor];
    [self installingTheProcessor];
    [self choiseOfRAM];
    [self installingTheRAM];
    [self choiseOfHDD];
    [self installingTheHDD];
}

- (void) choiceOfBody
{
    NSLog (@"chiceOfBody");
}

- (void) choiceOfMotherboard
{
    NSLog(@"choiceOfMotherboard");
}

- (void) installingTheMotherboard
{
    NSLog(@"installingTheMotherboard");
}

- (void) choiseOfProcessor
{
    NSLog(@"coiseOfProcessor");
}

- (void) installingTheProcessor
{
    NSLog(@"installingTheProcessot");
}

- (void) choiseOfRAM
{
    NSLog(@"coiseOfRAM");
}

- (void) installingTheRAM
{
    NSLog(@"installingTheRAM");
}

- (void) choiseOfHDD
{
    NSLog(@"choiseOfHDD");
}

- (void) installingTheHDD
{
    NSLog(@"installingTheHDD \n ");
}

- (void) installationOfTheSoftware
{
    [self choiseOS];
    [self creationRAIDArray];
    [self installationOS];
    [self testingOS];
}

- (void) choiseOS
{
    NSLog(@"choiseOS");
}

- (void) creationRAIDArray
{
    NSLog(@"creationRAIDArray");
}

- (void) installationOS
{
    NSLog(@"installationOS");
}

- (void) testingOS
{
    NSLog(@"testingOS");
}


@end
