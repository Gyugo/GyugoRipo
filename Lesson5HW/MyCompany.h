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

- (void) myConpanyInfo;
- (void) myConpanyWorkPlace;

@end

@protocol MyCompanyDelegate <NSObject>

@required //методы обязательные к реализации

- (void) protocolMethodInfo: (MyCompany *) protocols string: (NSMutableArray*) array;

- (void) protocolMethodWorkPlace: (MyCompany *) protocols string: (NSMutableArray*) arrayWP;


@optional //методы не обязательные к реализации



@end
