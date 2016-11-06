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
        _gameOver = NO;
        _currentIndex = 0;
        _gameLogic = @{@4:@14,
                       @7:@17,
                       @9:@31,
                       @15:@30,
                       @20:@38,
                       @28:@84,
                       @34:@14,
                       @40:@59,
                       @51:@67,
                       @62:@60,
                       @63:@81,
                       @64:@60,
                       @71:@40,
                       @89:@26,
                       @95:@73,
                       @99:@78};
    }
    return self;
}


-(void) createPlayers {
    NSString * numPlayers;
    do {
        NSLog(@"How many players will be playing?");
        char num [255];
        fgets(num, 255, stdin);
        numPlayers = [NSString stringWithCString:num encoding:NSUTF8StringEncoding];
        numPlayers = [numPlayers stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
    } while ([numPlayers intValue] < 1);
    
    int x;
    for (x = 1; x <= [numPlayers intValue]; x++) {
        Player * player = [Player new];
        player.name = [NSString stringWithFormat:@"Player%d", x];
        [self.players addObject:player];
    }
}

-(Player *) getCurrentPlayer {
    return self.players[self.currentIndex];
}

-(void) startGame {
    NSLog(@"Options: Roll (R)");
    while (self.gameOver == NO) {
        char str [255];
        fgets(str, 255, stdin);
        NSString * input = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        input = [input lowercaseString];
        
        if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]) {
            [self roll];
        }
    }
}

-(void) roll{
    Player * currentPlayer = [self getCurrentPlayer];
    int rollValue = arc4random_uniform(6)+1;
    NSLog(@"%@ rolled a %d",currentPlayer.name, rollValue);
    currentPlayer.currentSquare += rollValue;
    NSNumber * currentNumber = [NSNumber numberWithInteger:currentPlayer.currentSquare];
    
    if ([self.gameLogic objectForKey:currentNumber] != nil){
        NSNumber * newSquare =[self.gameLogic objectForKey:currentNumber];
        currentPlayer.currentSquare = [newSquare integerValue];
        if (currentNumber < [self.gameLogic objectForKey:currentNumber]) {
            NSLog (@"Ladder! %@ climbed to square %ld", currentPlayer.name, currentPlayer.currentSquare);
        }else{
            NSLog (@"Snake! %@ slid back down to square %ld", currentPlayer.name, currentPlayer.currentSquare);
        }
    }else{
        NSLog(@"%@ landed on: %ld",currentPlayer.name, currentPlayer.currentSquare);
    }
    
    self.currentIndex += 1;
    if (self.currentIndex >= [self.players count]){
        self.currentIndex = 0;
    }
    
    if (currentPlayer.currentSquare >= 100) {
        self.gameOver = YES;
        [self.players removeAllObjects];
        NSLog(@"Game Over! %@ wins!", currentPlayer.name);
        NSLog(@"============================\n\n");
    }
}

@end
