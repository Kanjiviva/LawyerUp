//
//  Client.h
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (assign, nonatomic) Specializations problem;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *problemOfDescription;

- (instancetype)initWithName:(NSString *)name problemOfDescription:(NSString *)problemOfDescription specialization:(Specializations)specialty;

@end
