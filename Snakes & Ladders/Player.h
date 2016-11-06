//
//  Player.h
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, weak) NSString * playerName;
@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary * gameLogic;
@property (nonatomic) NSString * output; 
@property (nonatomic) BOOL gameOver;

@property (nonatomic) NSString * name;

-(void) roll;

@end
