//
//  FormalInvitation.h
//  MeVite
//
//  Created by Austin Meyer on 7/14/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class Party;

typedef enum menuChoices{
    NotAttending,
    Steak,
    Salmon,
    VeggiePasta
    
    
}menuChoices;

@interface FormalInvitation : NSObject

@property (nonatomic, strong) Party *party;
@property (nonatomic, strong) NSArray *rsvpInfo;

@end

NS_ASSUME_NONNULL_END
