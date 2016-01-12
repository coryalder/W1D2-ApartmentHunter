//
//  Room.m
//  ApartmentHunter
//
//  Created by Cory Alder on 2016-01-12.
//  Copyright © 2016 Cory Alder. All rights reserved.
//

#import "Room.h"


@implementation Room


-(float)windowArea {
    return self.windowWidth * self.windowHeight;
}


-(float)area {
    return self.width * self.depth;
}

-(float)brightnessScore {
    
//    float score =  / self.width * self.depth;
    
    return  [self windowArea] / [self area];

}

-(BOOL)brighterThan:(Room *)otherRoom {
    return [otherRoom brightnessScore] < [self brightnessScore];
}



-(Room *)brightestOf:(Room*)otherRoom {
    if ([self brighterThan:otherRoom]) {
        return self;
    } else {
        return otherRoom;
    }
}




@end
