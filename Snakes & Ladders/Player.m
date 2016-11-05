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
        _gameOver = NO;
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
    NSLog(@"You rolled a %d",rollValue);
    self.currentSquare += rollValue;
    NSNumber * currentNumber = [NSNumber numberWithInteger:self.currentSquare];
    
    if ([self.gameLogic objectForKey:currentNumber] != nil){
        NSNumber * newSquare =[self.gameLogic objectForKey:currentNumber];
        self.currentSquare = [newSquare integerValue];
        if (currentNumber < [self.gameLogic objectForKey:currentNumber]) {
            NSLog (@"Ladder! You climbed to square %ld", self.currentSquare);
        }else{
            NSLog (@"Snake! You slid back down to square %ld", self.currentSquare);
        }
    }else{
        NSLog(@"You landed on: %ld",self.currentSquare);
    }
    
    if (self.currentSquare >= 100) {
        self.gameOver = YES;
        NSLog(@"Game Over!");
    }
    
    
}

@end
