//
//  DetailCoreData.h
//  Lesson5HW
//
//  Created by Viktor on 28.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MagicalRecord/MagicalRecord.h>

@interface DetailCoreData : NSObject

- (void) addDataNameBoard: (NSString*) nameGame andTypeBoard: (NSString*) typeBoard;

- (void) printCoreData;

- (void)deleteUsers:(NSString*)name andLogin:(NSString*)type;


@end
