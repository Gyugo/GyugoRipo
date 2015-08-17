//
//  ASBoxer.m
//  StukorenkoProperties
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ASBoxer.h"

@interface ASBoxer ()
@property (assign, nonatomic) NSInteger nameCount;

@end

@implementation ASBoxer
@synthesize name = _name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.0f;
    }
    return self;
}



- (void) setName:(NSString *) string {
    
    NSLog(@"setter setName: is called");
    
   //Внутренняя переменная айвар, только внутри класса
    //Доступ не может получить и наследник класса
    _name = string;
}

//только либо сеетер либо геттер
- (NSString*) name {
    
    self.nameCount = self.nameCount + 1;
    
    
    NSLog(@"Name getter is called %d times", self.nameCount);
    
    return _name;
}

- (NSInteger) age {
    NSLog(@"are getter is called");
    
    return _age;
}

- (NSInteger) howOldAreYou {
    return self.age;
}

@end
