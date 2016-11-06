//
//  main.m
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerManager * playerManager = [PlayerManager new];
        while (true) {
            playerManager.gameOver = NO;
            NSLog(@"Welcome to Snakes & Ladders!");
            [playerManager createPlayers];
            [playerManager startGame];
        }
    }
    return 0;
}
