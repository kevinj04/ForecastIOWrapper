//
//  FIOMinuteDataPoint.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOMinuteDataPoint.h"

NSString *const FIOTimeKey = @"time";
NSString *const FIOPrecipitationIntensityKey = @"precipIntensity";

@implementation FIOMinuteDataPoint

#pragma mark - Initialization
- (id)init {

    self = [[super class] init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [FIOMinuteDataPoint init];

    if (self) { [self updateWithDictionary:dictionary]; }

    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    if ([dictionary objectForKey:FIOTimeKey]) {
        self.time = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIOTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIOPrecipitationIntensityKey]) {
        self.precipitationIntensity = [[dictionary objectForKey:FIOPrecipitationIntensityKey] floatValue];
    }
}

@end
