//
//  ElectronicStore.h
//  ElectronicsStore
//
//  Created by Viktor on 15.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElectronicStore : NSObject

//Испльзыем 2 property задание имени и типа магаина
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* type;

- (void) helloMethod;
- (void) byMethod;
- (void) tV;
- (void) washingMashine;
- (void) airConditioning;

@end
