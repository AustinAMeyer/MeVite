//
//  Party.h
//  MeVite
//
//  Created by Austin Meyer on 7/14/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invitation.h"
#import "FormalInvitation.h"

NS_ASSUME_NONNULL_BEGIN

@interface Party : NSObject{
    
}

@property (nonatomic, strong) NSString *partyName;
@property (nonatomic) int guestCount; //Number of guests
@property (nonatomic, strong) NSMutableArray *guestList; //Invitees attending
@property (nonatomic, strong) NSString *partyLocation;
@property (nonatomic, strong) NSDate *partyDate; //Date and time of the party

- (void)tallyRSVPs:(NSArray*)rsvpArray;


@end

NS_ASSUME_NONNULL_END
