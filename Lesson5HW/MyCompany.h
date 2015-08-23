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

@end

@protocol MyCompanyDelegate <NSObject>

@required //методы обязательные к реализации

- (void) protocolMethod: (MyCompany *) protocols string: (NSMutableArray*) array;

- (void) setYouName: (NSString*) string;

@optional //методы не обязательные к реализации


@end
