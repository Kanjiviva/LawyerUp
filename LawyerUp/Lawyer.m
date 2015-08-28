//
//  Lawyer.m
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer

- (instancetype)initWithPractice:(Practice *)practice name:(NSString *)name specialization:(Specializations )specialization
{
    self = [super init];
    self.clientList = [[NSMutableSet alloc] init];
//    self.rateOfCharge = [NSNumber numberWithInt:[practice.specialities objectForKey:[NSNumber numberWithInt:specialization]]];
    
    NSNumber *specialty = [NSNumber numberWithInt:specialization];
    NSNumber *priceOfEach = [practice.specialities objectForKey:specialty];
    self.rateOfCharge = priceOfEach;
    
    
    return self;
}

@end
