//
//  Associate.m
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import "Associate.h"
#import "Lawyer.h"
#import "Client.h"

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer{
    
    [lawyer.clientList addObject:client];
    
}

-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer {
    
    int finalCharge = 0;
    
    if ([client.problemOfDescription length] < 10){
        finalCharge = [lawyer.rateOfCharge intValue] * 5;
        
    } else if ([client.problemOfDescription length] >= 10 && [client.problemOfDescription length] <= 20) {
        finalCharge = [lawyer.rateOfCharge intValue] * 10;
    } else {
        finalCharge = [lawyer.rateOfCharge intValue] * 25;
    }
    
    NSLog(@"Your Final Charge is %i", finalCharge);
    
    return finalCharge;
}

@end
