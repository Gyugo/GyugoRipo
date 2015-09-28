//
//  DetailCoreData.m
//  Lesson5HW
//
//  Created by Viktor on 28.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "DetailCoreData.h"
#import "BoardGame.h"

@implementation DetailCoreData

- (void)addDataNameBoard:(NSString*)nameBoard andTypeBoard:(NSString*)typeBoard
{

    NSManagedObjectContext* localContext = [NSManagedObjectContext MR_context];
    BoardGame* game = [BoardGame MR_createEntityInContext:localContext];

    game.gameName = nameBoard;
    game.gameType = typeBoard;

    [localContext MR_saveToPersistentStoreAndWait];
}

- (void)printCoreData
{

    NSManagedObjectContext* localContext = [NSManagedObjectContext MR_context];
    NSArray* gameArray = [BoardGame MR_findAllInContext:localContext];
    [gameArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL* stop) {
        BoardGame* printGame = (BoardGame*)obj;

        NSLog(@"nameGame %@, typeGame %@", printGame.gameName, printGame.gameType);

    }];
}

- (void)deleteUsers:(NSString*)name andLogin:(NSString*)type
{
    // Get the local context
    NSManagedObjectContext* localContext = [NSManagedObjectContext MR_context];

    // Retrieve the first person who have the given firstname
    BoardGame* game = [BoardGame MR_findFirst];

    if (game) {
        // Delete the person found
        [game MR_deleteEntityInContext:localContext];

        // Save the modification in the local context
        // With MagicalRecords 2.0.8 or newer you should use the MR_saveNestedContexts
        [localContext MR_saveToPersistentStoreAndWait];
    }
}
@end
