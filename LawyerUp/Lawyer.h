//
//  Lawyer.h
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Associate.h"


@interface Lawyer : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) Specializations lawyerSpecialty;
@property (strong, nonatomic) NSNumber *rateOfCharge;
@property (strong, nonatomic) NSMutableSet *clientList;

@property (weak, nonatomic) id<ClientLawyerDelegate> delegate;

- (instancetype)initWithPractice:(Practice *)practice name:(NSString *)name specialization:(Specializations )specialization;

@end
