//
//  main.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2015-08-05.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Room *room1 = [[Room alloc] init];
        
        room1.name = @"Yellow";
        
        room1.windowWidth = 10;
        room1.windowHeight = 8;
        
        room1.width = 10;
        room1.height = 10;
        room1.depth = 10;
        
//        float score = [room1 score];
        
//        NSLog(@"Room 1 brightness score is %f", score);
        
        Room *room2 = [[Room alloc] init];
        
        room2.name = @"Orange";
        
        room2.windowWidth = 10;
        room2.windowHeight = 8;
        
        room2.width = 20;
        room2.height = 10;
        room2.depth = 10;
        
        
        
        
        
        
//        float score2 = [room2 score];
        
//        NSLog(@"Room 2 brightness score is %f", score2);
//        
//        if ([room1 brighterThan:room2]) {
//            NSLog(@"Room 1 is brighter than room 2");
//        } else {
//            NSLog(@"Room 2 is brighter than room 1");
//        }
//        
        Room *brightestRoom = [room2 brightest:room1];
        
        NSLog(@"The brightest room is %@", brightestRoom.name);
        
        
        NSMutableArray *rooms = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Room *aRoom = [[Room alloc] init];
            
            aRoom.windowWidth = 1 + arc4random_uniform(10);
            aRoom.windowHeight = 1 + arc4random_uniform(10);
            
            aRoom.width = 1 + arc4random_uniform(10);
            aRoom.height = 1 + arc4random_uniform(10);
            aRoom.depth = 1 + arc4random_uniform(10);
            
            [rooms addObject:aRoom];
        }
        
        NSLog(@"I have %lu rooms", (unsigned long)[rooms count]);
        
        Room *brightestFromArray = [rooms firstObject];
        
        for (Room *oneRoom in rooms) {
            NSLog(@"score %f", [oneRoom score]);
            if([oneRoom brighterThan:brightestFromArray]) {
                brightestFromArray = oneRoom;
            }
        }
        
        
        NSLog(@"brightest room is %f", [brightestFromArray score]);
        
        
        
    }
    return 0;
}
