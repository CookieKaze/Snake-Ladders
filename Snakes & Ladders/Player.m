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
