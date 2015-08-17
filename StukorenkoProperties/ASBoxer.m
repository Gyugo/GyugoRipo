//
//  ASBoxer.m
//  StukorenkoProperties
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ASBoxer.h"

@implementation ASBoxer
@synthesize name = _name;

- (void) setName:(NSString *) size {
    
    NSLog(@"setter setName: is called");
    
   //Внутренняя переменная айвар, только внутри класса
    //Доступ не может получить и наследник класса
    _name = size;
}

//только либо сеетер либо геттер
- (NSString*) name {
    return _name;
}

@end
