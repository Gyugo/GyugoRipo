//
//  BoardGame.h
//  
//
//  Created by Viktor on 28.09.15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BoardGame : NSManagedObject

@property (nonatomic, retain) NSString * gameName;
@property (nonatomic, retain) NSString * gameType;

@end
