//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    
    NSInteger five = 5;
    NSInteger six = 6;
    NSInteger thousand = 1000;
    NSInteger billion = 1000000000;
    
    if (dollars < five ) {
        itemToReturn = @"get out of my store";
    }
    if (dollars == five){
        itemToReturn = @"have some gum";
    }
    if (dollars ==six) {
        itemToReturn = @"have an apple";
    }
    if (dollars == thousand) {
        itemToReturn = @"have an Apple computer";
    }
    if (dollars == billion) {
        itemToReturn = @"have The Big Apple";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */

    NSUInteger cost = 24;
    
    if (self.getsDiscount) {
        cost *= .75;
        NSLog(@"Discounted vodka should be %ld.",(long)cost);
    }else{
    
        NSLog(@"Undiscounted vodka should be %ld.",(long)cost);
   
}
     return cost;
}
@end
