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

    self = [[super class] init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [FIOForecast init];

    if (self) { [self updateWithDictionary:dictionary]; }

    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    if ([dictionary objectForKey:FIOForecastSummaryKey]) {
        self.summary = [dictionary objectForKey:FIOForecastSummaryKey];
    }

    if ([dictionary objectForKey:FIOForecastIconKey]) {
        self.icon = [dictionary objectForKey:FIOForecastIconKey];
    }

    if ([dictionary objectForKey:FIOForecastDataKey]) {
        [self updateDataPointsWithArray:[dictionary objectForKey:FIOForecastDataKey]];
    }
    
}

- (void)updateDataPointsWithArray:(NSArray *)array {
    NSAssert(NO, @"This method should have been overriden.");
}

@end
