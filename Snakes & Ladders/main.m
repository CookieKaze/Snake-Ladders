//
//  main.m
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player * player = [Player new];
        NSLog(@"Welcome to Snakes & Ladders!");
        NSLog(@"Options: Roll (R)");
        while (player.gameOver == NO) {
            char str [255];
            fgets(str, 255, stdin);
            NSString * input = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            input = [input lowercaseString];
            
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]) {
                [player roll];
            }
        }
    }
    return 0;
}
