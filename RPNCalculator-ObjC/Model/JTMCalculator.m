//
//  JTMCalculator.m
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMCalculator.h"
#import "JTMStack.h"

@interface JTMCalculator ()

@property JTMStack *stack;

@end

@implementation JTMCalculator

- (void)applyOperator:(Operator)operatorInstance
{
    double operand2 = 0.0;
    double operand1 = 0.0;
    if ([[self stack] peek]){
        operand2 = [[self stack] pop];
    }
    if ([[self stack] peek])
    {
        operand1 = [[self stack] pop];
    }
    
    double result;
    
    switch (operatorInstance) {
        case add:
            result = operand1 + operand2;
            break;
        case subtract:
            result = operand1 - operand2;
            break;
        case multiply:
            result = operand1 * operand2;
            break;
        case divide:
            result = operand1 / operand2;
            break;
    }
    [[self stack] pushObject:result];
    
}
- (void)clear
{
    self.stack = [[JTMStack alloc] initWith:@[]];
}

- (void)pushNumber:(double)value
{
    [[self stack] pushObject:value];
}

@end
