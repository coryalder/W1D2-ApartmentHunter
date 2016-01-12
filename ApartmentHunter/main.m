//
//  main.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2016-01-12.
//  Copyright © 2016 Cory Alder. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // brightness score = windowArea / roomArea
        
        float windowHeight = 10;
        float windowWidth = 8;
        
        float roomWidth = 12;
        float roomDepth = 14;
        
        float roomArea = roomDepth * roomWidth;
        float windowArea = windowWidth * windowHeight;
        
        float brightnessScore = windowArea / roomArea;
        
        NSLog(@"The room is %0.2f bright", brightnessScore);
        
        
        float window2Height = 10;
        float window2Width = 8;
        
        float room2Width = 12;
        float room2Depth = 14;
        
        float room2Area = room2Depth * room2Width;
        float window2Area = window2Width * window2Height;
        
        float brightnessScore2 = window2Area / room2Area;
        
        NSLog(@"The room is %0.2f bright", brightnessScore2);
        
        
        Room *room3 = [[Room alloc] init];
        room3.name = @"Room 3";
        room3.windowHeight = 12;
        room3.windowWidth = 5;
        
        room3.width = 20;
        room3.depth = 6;
        
        float room3score = [room3 brightnessScore];
        
//        [room3 windowArea] // private!
        
        NSLog(@"room3 score is %0.2f", room3score);
        
        Room *room4 = [[Room alloc] init];
        room4.name = @"Room 4";
        room4.windowHeight = 12;
        room4.windowWidth = 14;
        
        room4.width = 20;
        room4.depth = 20;
        
        
        BOOL room3IsBrighter = [room3 brighterThan:room4];
        
        if (room3IsBrighter) {
            NSLog(@"Room 3 is brighter");
        } else {
            NSLog(@"Room 4 is brighter");
        }
        
        
        Room *brightestRoom = [room3 brightestOf:room4];
        
        NSLog(@"The brightest room is %@", brightestRoom.name);
        
        
        
        NSArray *rooms = @[room3, room4];
        // [[NSArray alloc] initWithObjects:room3, room4, nil]; // bad!
        
        
        for (Room *aRoom in rooms) {
            NSLog(@"%@ has a score of %f", aRoom.name, [aRoom brightnessScore]);
        }
        
        
        NSMutableArray *mutableRooms = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            Room *newRoom = [[Room alloc] init];
            newRoom.windowHeight = 1 + arc4random_uniform(50);
            newRoom.windowWidth = 1 + arc4random_uniform(50);
            
            newRoom.width = 1 + arc4random_uniform(50);
            newRoom.depth = 1 + arc4random_uniform(50);
            
            newRoom.name = [NSString stringWithFormat:@"Room %i", i+1];
            
            [mutableRooms addObject:newRoom];
            
        }
        
        
        for (Room *aRoom in mutableRooms) {
            NSLog(@"%@ has a score of %f", aRoom.name, [aRoom brightnessScore]);
        }
        
        
        Room *brightest = [mutableRooms firstObject];
        
        for (Room *aRoom in mutableRooms) {
            brightest = [aRoom brightestOf:brightest];
        }
        
        NSLog(@"The brightest room is %@", brightest.name);
        
        
        
        
    }
    return 0;
}
