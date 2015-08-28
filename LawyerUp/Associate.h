//
//  Associate.h
//  LawyerUp
//
//  Created by Steve on 2015-08-27.
//  Copyright (c) 2015 Steve. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Lawyer.h"
//#import "Client.h"
@class Client;
@class Lawyer;

@protocol ClientLawyerDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;
-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end

@interface Associate : NSObject <ClientLawyerDelegate>

@end
