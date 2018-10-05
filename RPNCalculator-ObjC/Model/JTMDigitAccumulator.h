//
//  JTMDigitAccumulator.h
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JTMDigitAccumulator : NSObject

-(void)addDigitWithNumericValue:(double)value;

-(void)addDecimalPoint;

-(void)clear;

@property (readonly)double value;

@end

NS_ASSUME_NONNULL_END
