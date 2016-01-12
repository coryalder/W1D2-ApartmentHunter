//
//  Room.h
//  ApartmentHunter
//
//  Created by Cory Alder on 2016-01-12.
//  Copyright © 2016 Cory Alder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) float windowHeight;

//-(float)windowHeight;
//-(void)setWindowHeight:(float)windowHeight;

@property float windowWidth;

@property float width;
@property float depth;

-(float)brightnessScore;

-(BOOL)brighterThan:(Room *)otherRoom;

-(Room *)brightestOf:(Room*)otherRoom;

@end
