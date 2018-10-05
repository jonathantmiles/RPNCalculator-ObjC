//
//  JTMStack.m
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import "JTMStack.h"

@interface JTMStack ()

@property NSMutableArray *values;

@end

@implementation JTMStack

- (instancetype)initWith:(NSArray *)array
{
    self = [super init];
    if (self) {
        self.values = [array mutableCopy];
    }
    return self;
}

- (void)pushObject:(double)object
{
    NSNumber *value = [[NSNumber alloc] initWithDouble:object];
    [[self values] addObject:value];
}

- (double)pop
{
    NSNumber *object = [[[self values] lastObject] value];
    double value = [object doubleValue];
    [[self values] removeLastObject];
    return value;
}

- (double)peek
{
    NSNumber *value = [[self values] lastObject];
    return [value doubleValue];
}

@end
