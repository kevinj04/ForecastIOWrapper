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
- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super initWithDictionary:dictionary];
    return self;
}

+ (id)forecastWithDictionary:(NSDictionary *)dictionary {
    return [[FIOMinutelyForecast alloc] initWithDictionary:dictionary];
}
- (void)updateDataPointsWithArray:(NSArray *)array {

    NSMutableArray *newDataPoints = [NSMutableArray array];
    for (NSDictionary *dataPointDictionary in array) {

        FIOMinuteDataPoint *dataPoint = [FIOMinuteDataPoint pointWithDictionary:dataPointDictionary];
        [newDataPoints addObject:dataPoint];
    }
    self.dataPoints = newDataPoints;
}

@end
