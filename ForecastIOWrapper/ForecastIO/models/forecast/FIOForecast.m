//
//  FIOForecast.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOForecast.h"

NSString *const FIOForecastSummaryKey = @"summary";
NSString *const FIOForecastIconKey = @"icon";
NSString *const FIOForecastDataKey = @"data";

@implementation FIOForecast

#pragma mark - Initialization
- (id)init {

    self = [super init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [self init];
    if (self) { [self updateWithDictionary:dictionary]; }
    return self;
}

+ (id)forecastWithDictionary:(NSDictionary *)dictionary {
    return [[FIOForecast alloc] initWithDictionary:dictionary];
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    self.summary = dictionary[FIOForecastSummaryKey];
    self.icon = dictionary[FIOForecastIconKey];
    [self updateDataPointsWithArray:dictionary[FIOForecastDataKey]];
}

- (void)updateDataPointsWithArray:(NSArray *)array {
    NSAssert(NO, @"This method should have been overriden.");
}

@end
