//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray * players; 

-(void) createPlayers: (int) numPlayers;

@end
