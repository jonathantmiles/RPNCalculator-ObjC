//
//  JTMStack.h
//  RPNCalculator-ObjC
//
//  Created by Jonathan T. Miles on 10/4/18.
//  Copyright © 2018 Jonathan T. Miles. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JTMStack : NSObject

-(instancetype)initWith:(NSArray *)array;

// push appends to array
-(void)pushObject:(double)object;

// pop removes and returns last object in array
-(double)pop;

// peek looks at the last object but does not return it
-(double)peek;

@end

NS_ASSUME_NONNULL_END
