//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;
@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray * players; 
@property (nonatomic) NSInteger currentIndex;
@property (nonatomic) NSDictionary * gameLogic;
@property (nonatomic) BOOL gameOver;

-(void) createPlayers;
-(Player *) getCurrentPlayer;
-(void) startGame;
-(void) roll;
@end
