//
//  Room.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2015-08-05.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import "Room.h"

@implementation Room


-(float)windowArea {
    return self.windowHeight * self.windowWidth;
}

-(float)squareFootage {
    return self.height * self.width * self.depth;
}

-(float)score {
    float windowArea = [self windowArea];
    float roomSqft = [self squareFootage];

    
    return windowArea / roomSqft;
}


-(BOOL)brighterThan:(Room *)otherRoom {
//    if ([self score] > [otherRoom score]) {
//        return YES;
//    } else {
//        return NO;
//    }
//    
    return [self score] > [otherRoom score];
}



-(Room *)brightest:(Room *)otherRoom {
    if ([self brighterThan:otherRoom]) {
        return self;
    } else {
        return otherRoom;
    }
}

@end
