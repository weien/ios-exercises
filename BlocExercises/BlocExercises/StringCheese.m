//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *fullSentence = [NSString stringWithFormat: @"My favorite cheese is %@.", cheeseName];
    
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *cheese = @" cheese";
    if ([cheeseName rangeOfString:cheese options:NSCaseInsensitiveSearch].location == NSNotFound) {
        return cheeseName;
    } else {
        NSRange cheeseRange = [cheeseName rangeOfString:cheese options:NSCaseInsensitiveSearch];
        NSString *shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return shortName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
    NSString *phrase = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
        return phrase;
    } else {
    NSString *phrase = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        return phrase;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
}

@end
