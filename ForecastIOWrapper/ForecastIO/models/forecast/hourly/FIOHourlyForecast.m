//
//  FIOHourlyForecast.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOHourlyForecast.h"
#import "FIOHourDataPoint.h"

@implementation FIOHourlyForecast

#pragma mark - Initialization
- (void)updateDataPointsWithArray:(NSArray *)array {

    NSMutableArray *newDataPoints = [NSMutableArray array];
    for (NSDictionary *dataPointDictionary in array) {

        FIOHourDataPoint *dataPoint = [[FIOHourDataPoint alloc] initWithDictionary:dataPointDictionary];
        [newDataPoints addObject:dataPoint];
    }
    self.dataPoints = newDataPoints;
}

@end
