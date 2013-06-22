//
//  FIODailyForecast.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIODailyForecast.h"
#import "FIODailyDataPoint.h"

@implementation FIODailyForecast

#pragma mark - Initialization
- (void)updateDataPointsWithArray:(NSArray *)array {

    NSMutableArray *newDataPoints = [NSMutableArray array];
    for (NSDictionary *dataPointDictionary in array) {

        FIODailyDataPoint *dataPoint = [[FIODailyDataPoint alloc] initWithDictionary:dataPointDictionary];
        [newDataPoints addObject:dataPoint];
    }
    self.dataPoints = newDataPoints;
}

@end
