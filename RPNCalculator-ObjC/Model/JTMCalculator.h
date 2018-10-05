//
//  JTMCalculator.h
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JTMCalculator : NSObject

typedef NS_ENUM(int, Operator) { add, subtract, multiply, divide };

-(void)pushNumber:(double)value;

-(void)applyOperator:(Operator)operatorInstance;

-(void)clear;

@property double topValue;

@end

NS_ASSUME_NONNULL_END
