//
//  CompanyMain.h
//  Company
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompanyMain : NSObject

@property (strong, nonatomic) NSString* nameCompany; //имя
@property (strong, nonatomic) NSString* activities; //деятельность
@property (assign, nonatomic) NSInteger based; //основанна
@property (strong, nonatomic) NSString* aboutCompany; //о компании

- (void)departmentsCompany;
- (void) dividingLine;

@end
