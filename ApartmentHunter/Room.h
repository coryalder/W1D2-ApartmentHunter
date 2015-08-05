//
//  Room.h
//  ApartmentHunter
//
//  Created by Cory Alder on 2015-08-05.
//  Copyright (c) 2015 Cory Alder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) float windowHeight;
@property (nonatomic, assign) float windowWidth;

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

-(float)windowArea;
-(float)squareFootage;

-(float)score;

-(BOOL)brighterThan:(Room *)otherRoom;

-(Room *)brightest:(Room *)otherRoom;

@end
