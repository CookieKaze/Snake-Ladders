//
//  Player.h
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger currentSquare;


-(void) roll;

@end
