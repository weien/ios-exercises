//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger minNumber = MIN(number,otherNumber);
    NSInteger maxNumber = MAX(number,otherNumber);
    NSString* astring = @"";
    NSString* nstring;
    while (minNumber <= maxNumber){
        
        nstring = [NSString stringWithFormat:@"%i", (int)minNumber];
        astring = [astring stringByAppendingFormat:@"%@", nstring];
        ++minNumber;
        
    }
    return astring;
    
}

@end
