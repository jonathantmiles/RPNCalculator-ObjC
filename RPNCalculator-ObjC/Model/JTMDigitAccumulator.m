//
//  JTMDigitAccumulator.m
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMDigitAccumulator.h"

@interface JTMDigitAccumulator ()

@property double digit; // this is my inspired way to try to deal with all of this
@property BOOL hasPressedDecimal;
@property int placeCounter;

@end

@implementation JTMDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.digit = 0.0;
        self.placeCounter = 1;
        self.hasPressedDecimal = NO;
    }
    return self;
}

- (void)addDecimalPoint
{
    // maybe this just flips the BOOL and the logic for adding spaces is in the addDigit method
    self.hasPressedDecimal = YES;
}

- (void)addDigitWithNumericValue:(double)value
{
    // carrying on from above, what if this multiplies stored number by ten, then adds the new result
    self.digit *= 10;
    self.digit += value;
    // then, after the BOOL is flipped, start a counter going for how many places are added after the decimal
    if (self.hasPressedDecimal)
    {
        // counter value (default 1) * 10 for each place
        self.placeCounter *= 10;
        // when computed, return amount divided by this number
    }
}

- (void)clear
{
    self.digit = 0.0;
    self.placeCounter = 1;
    self.hasPressedDecimal = NO;
}

-(double)value
{
    // needs actual implementation
    // when computed, return amount divided by the placeCounter
    return self.digit / self.placeCounter;
}

@end
