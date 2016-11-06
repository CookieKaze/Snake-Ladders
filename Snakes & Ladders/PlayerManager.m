//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
    }
    return self;
}

-(void) createPlayers: (int) numPlayers {
    int x;
    for (x = 1; x <= numPlayers; x++) {
        Player * player = [Player new];
        player.name = [NSString stringWithFormat:@"player%d", x];
        [self.players addObject:player];
    }
}

@end
