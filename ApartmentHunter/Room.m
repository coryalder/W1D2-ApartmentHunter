//
//  Room.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2015-08-25.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "Room.h"

@implementation Room

-(float)squareFootage {
    return self.height * self.width * self.depth;
}


-(float)windowArea {
    return self.windowHeight * self.windowWidth;
}


-(float)score {
    return [self windowArea] / [self squareFootage]; 
}


-(BOOL)isBrighterThan:(Room *)otherRoom {
    return [self score] > [otherRoom score];
}


-(Room *)brightestOf:(Room *)otherRoom {
    if ([self isBrighterThan:otherRoom]) {
        return self;
    } else {
        return otherRoom;
    }
}

@end
