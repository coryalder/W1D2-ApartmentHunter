//
//  main.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2015-08-25.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // room 1
//        float windowHeight = 10;
//        float windowWidth = 8;
//        
//        float roomHeight = 11;
//        float roomWidth = 12;
//        float roomDepth = 20;
//        
//        float windowArea = windowHeight * windowWidth;
//        float squareFootage = roomHeight * roomWidth * roomDepth;
//        
//        float score = windowArea / squareFootage;
        
        
        Room *room1 = [[Room alloc] init];
        
        room1.name = @"Room 1";
        
        room1.windowHeight = 10;
        room1.windowWidth = 8;
        
        room1.height = 11;
        room1.width = 12;
        room1.depth = 20;
        
        
        // room 2
        
        
        Room *room2 = [[Room alloc] init];
        
        room2.name = @"Room 2";
        
        room2.height = 11;
        room2.width = 12;
        room2.depth = 15;
        
        room2.windowWidth = 10;
        room2.windowHeight = 10;
        
        if ([room1 isEqual:room2]) {
            
        }
        
        Room *brightestRoom = [room1 brightestOf:room2];
        
        NSLog(@"The brightest room is %@", brightestRoom.name);
        
//        float score2 = [room2 windowArea] / [room2 squareFootage];
        
//        NSLog(@"Room 1 score is %f", [room1 score]);
//        NSLog(@"Room 2 score is %f", [room2 score]);
//        
//        //if ([room1 score] > [room2 score]) {
//        if ([room1 isBrighterThan:room2]) {
//            NSLog(@"Room1 is the brightest");
//        } else {
//            NSLog(@"Room2 is the brightest");
//        }
        
        
        NSString *aString = [[NSString alloc] init];
        NSString *anotherString = @"";
        
        NSArray *twoRooms = [[NSArray alloc] init];
        
        twoRooms = [twoRooms arrayByAddingObject:room1];
        twoRooms = [twoRooms arrayByAddingObject:room2];
        
        NSLog(@"I have %lu rooms", (unsigned long)[twoRooms count]);
        
        for (Room *aRoom in twoRooms) {
            
            NSLog(@"%@ has a brightness score of %f", aRoom.name, [aRoom score]);
            
        }
        
        
        NSMutableArray *rooms = [@[room1, room2] mutableCopy];
//        [rooms addObject:room1];
//        [rooms addObject:room2];
        
        for (int i = 0; i < 10; i++) {
            
            Room *newRoom = [[Room alloc] init];
            newRoom.height = 1 + arc4random_uniform(10);
            newRoom.width = 1 + arc4random_uniform(10);
            newRoom.depth = 1 + arc4random_uniform(10);
            
            newRoom.windowHeight = 1 + arc4random_uniform(10);
            newRoom.windowWidth = 1 + arc4random_uniform(10);
            
            newRoom.name = [NSString stringWithFormat:@"Room %d", i];
            
            [rooms addObject:newRoom];
        }
        
        Room *realBrightestRoom = [rooms firstObject];
        
        for (Room *aRoom in rooms) {
            realBrightestRoom = [realBrightestRoom brightestOf:aRoom];
            NSLog(@"%@ has a brightness score of %f", aRoom.name, [aRoom score]);
        }
        
        
        
        NSLog(@"The brightest room in the large array is %@", realBrightestRoom.name);
        
    }
    return 0;
}
