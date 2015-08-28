//
//  Practice.h
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, Specializations) {
    FamilyLaw,
    PatentLaw,
    CriminalLaw,
    CorporateLaw
};
@interface Practice : NSObject

@property (strong, nonatomic) NSMutableDictionary *specialities;

@end
