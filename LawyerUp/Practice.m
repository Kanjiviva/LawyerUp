//
//  Practice.m
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Practice.h"

@implementation Practice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.specialities = [[NSMutableDictionary alloc] init];

        [self.specialities setObject:@200.00 forKey:[NSNumber numberWithInt:FamilyLaw]];
        [self.specialities setObject:@380.50 forKey:[NSNumber numberWithInt:PatentLaw]];
        [self.specialities setObject:@405.99 forKey:[NSNumber numberWithInt:CriminalLaw]];
        [self.specialities setObject:@400.00 forKey:[NSNumber numberWithInt:CorporateLaw]];
        
        
        
    }
    return self;
}

@end
