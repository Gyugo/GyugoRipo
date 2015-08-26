//
//  MyCompany.h
//  Lesson5HW
//
//  Created by Viktor on 23.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyCompanyDelegate;

@interface MyCompany : NSObject

@property (nonatomic, weak) id <MyCompanyDelegate> delegate;

- (void) myConpanyInfo; //Метод массива информации о сотрудников
- (void) myConpanyWorkPlace; //Метод массива информации о рабочих местах

@end

@protocol MyCompanyDelegate <NSObject>

@required //методы обязательные к реализации

- (void) protocolMethodInfo: (MyCompany *) protocols string: (NSMutableArray*) array;


@optional //методы не обязательные к реализации



@end
