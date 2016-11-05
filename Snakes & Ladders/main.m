//
//  main.m
//  Snakes & Ladders
//
//  Created by Erin Luu on 2016-11-05.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
            NSLog(@"Welcome to Snakes & Ladders!");
            NSLog(@"What would you like to do?");
            NSLog(@"Options: Roll (R)");
            char str [255];
            fgets(str, 255, stdin);
            NSString * input = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            input = [input lowercaseString];
            
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]) {
                NSLog(@"YOU ROLLED");
            }
        }
    }
    return 0;
}
