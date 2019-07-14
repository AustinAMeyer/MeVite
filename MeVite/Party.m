//
//  Party.m
//  MeVite
//
//  Created by Austin Meyer on 7/14/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "Party.h"

@implementation Party

- (id)init {
    self = [super init];
    if (self) {
        self.guestList = [[NSMutableArray alloc] init];
        
    }
    return self;
}


- (void)tallyRSVPs:(NSArray*)rsvpArray{
    
    for (id rsvp in rsvpArray) {
        
        if ([rsvp isKindOfClass:[FormalInvitation class]]) {
            FormalInvitation *tmpRSVP = rsvp;
            for (NSDictionary *guest in tmpRSVP.rsvpInfo) {
                if ([[guest valueForKey:@"Menu"]intValue] != NotAttending) {
                    
                    self.guestCount++;
                    [self.guestList addObject:guest];
                }
            }
        }
        else{
            Invitation *tmpRSVP = rsvp;
            if (tmpRSVP.guestAttending > 0) {
                self.guestCount += tmpRSVP.guestAttending;
                [self.guestList addObject:tmpRSVP.guestNames];
            }
        }
        
    }

}


/*
- (void)tallyRSVPs:(NSArray*)rsvpArray{
    
    for (Invitation *rsvp in rsvpArray) {
        if (rsvp.guestAttending > 0) {
            self.guestCount += rsvp.guestAttending;
            [self.guestList addObject:rsvp.guestNames];
        }
    }
    
    
}
*/
@end
