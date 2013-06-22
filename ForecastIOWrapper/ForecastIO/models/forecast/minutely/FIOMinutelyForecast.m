//
//  FIOMinutelyForecast.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOMinutelyForecast.h"
#import "FIOMinuteDataPoint.h"

@implementation FIOMinutelyForecast

#pragma mark - Initialization
- (void)updateDataPointsWithArray:(NSArray *)array {

    NSMutableArray *newDataPoints = [NSMutableArray array];
    for (NSDictionary *dataPointDictionary in array) {

        FIOMinuteDataPoint *dataPoint = [[FIOMinuteDataPoint alloc] initWithDictionary:dataPointDictionary];
        [newDataPoints addObject:dataPoint];
    }
    self.dataPoints = newDataPoints;
}

@end
