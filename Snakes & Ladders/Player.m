//
//  Player.m
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
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

-(void) roll{
    int rollValue = arc4random_uniform(6)+1;
    self.currentSquare += rollValue;
    NSLog(@"Roll: %d",rollValue);
    NSLog(@"Current Square: %ld",self.currentSquare);
}

@end
