//
//  main.m
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Lawyer.h"
#import "Associate.h"
#import "Client.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Practice *practice = [[Practice alloc] init];
        Lawyer *lawyer = [[Lawyer alloc] initWithPractice:practice name:@"Steve" specialization:FamilyLaw];
        Associate *associate = [Associate new];
        lawyer.delegate = associate;
        
        
        Client *client = [[Client alloc] initWithName:@"C" problemOfDescription:@"Family Issue" specialization:FamilyLaw];
        
        [associate addClientToClientList:client forLawyer:lawyer];
        [associate payableAmountForClient:client forLawyer:lawyer];
        
        
        Lawyer *lawyer2 = [[Lawyer alloc] initWithPractice:practice name:@"Jon" specialization:CriminalLaw];
        Associate *associate2 = [Associate new];
        lawyer2.delegate = associate2;
        Client *client2 = [[Client alloc] initWithName:@"A" problemOfDescription:@"Criminal Issue" specialization:CriminalLaw];

        [associate addClientToClientList:client2 forLawyer:lawyer2];
        [associate payableAmountForClient:client2 forLawyer:lawyer2];
        
    }
    return 0;
}
