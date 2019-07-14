//
//  main.m
//  MeVite
//
//  Created by Austin Meyer on 7/14/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Party.h"
#import "Invitation.h"
#import "FormalInvitation.h"

int main(int argc, const char * argv[]) {
    /*
    Party *costumeParty = [[Party alloc]init];
    costumeParty.partyName = @"BoogieMan Bash";
    
    Invitation *invite1 = [[Invitation alloc]init];
    invite1.guestNames = @"Matt and Bill";
    invite1.guestAttending = 1;
    
    Invitation *invite2 = [[Invitation alloc]init];
    invite2.guestNames = @"Lucy and Pete";
    invite2.guestAttending = 2;
    
    Invitation *invite3 = [[Invitation alloc]init];
    invite3.guestNames = @"Bruce, Kaya, and Mookie";
    invite3.guestAttending = 2;
    
    [costumeParty tallyRSVPs:@[invite1, invite2, invite3]];
    */
    
    Party *charityBall = [[Party alloc]init];
    charityBall.partyName = @"Annual Gala";
    
    FormalInvitation *invite1 = [[FormalInvitation alloc]init];
    invite1.rsvpInfo = @[@{@"Guest": @"Julius",
                           @"Menu": @(NotAttending)},
                         @{@"Guest": @"Quentin",
                           @"Menu": @(VeggiePasta)},
                         @{@"Guest": @"William",
                           @"Menu": @(Steak)},
                         @{@"Guest": @"Lauren",
                           @"Menu": @(VeggiePasta)}];
    
    FormalInvitation *invite2 = [[FormalInvitation alloc]init];
    invite2.rsvpInfo = @[@{@"Guest": @"Jesse",
                           @"Menu": @(Salmon)},
                         @{@"Guest": @"Shannon",
                           @"Menu": @(Steak)},
                         @{@"Guest": @"Lila",
                           @"Menu": @(VeggiePasta)}];
    
    [charityBall tallyRSVPs:@[invite1, invite2]];
     
    
    
    return 0;
}
