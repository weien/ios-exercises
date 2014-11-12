//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *mutableArray = [(NSArray*)characterArray mutableCopy];
    NSSortDescriptor *sortArray = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableArray sortUsingDescriptors:@[sortArray]];
    return mutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *mutArray = [(NSArray*)characterArray mutableCopy];
    NSPredicate *matchesWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutArray filterUsingPredicate:matchesWorf];
    NSString *worf = @"worf";
    
    for (NSString *string in mutArray){
        if ([string compare:worf options:NSCaseInsensitiveSearch]){
            return YES;
        }
    }
    return NO;
    
}

@end
