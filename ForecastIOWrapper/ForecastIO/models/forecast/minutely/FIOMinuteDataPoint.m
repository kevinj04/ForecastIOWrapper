//
//  FIOMinuteDataPoint.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOMinuteDataPoint.h"

NSString *const FIOMinuteDataPointTimeKey                       = @"time";
NSString *const FIOMinuteDataPointPrecipitationIntensityKey     = @"precipIntensity";
NSString *const FIOMinuteDataPointPrecipitationProbabilityKey   = @"precipProbability";

@implementation FIOMinuteDataPoint

#pragma mark - Initialization
- (id)init {

    self = [super init];
    return self;
}

+ (id)pointWithDictionary:(NSDictionary *)dictionary {
    return [[FIOMinuteDataPoint alloc] initWithDictionary:dictionary];
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.time = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIOMinuteDataPointTimeKey] integerValue]];
    self.precipitationIntensity = [dictionary[FIOMinuteDataPointPrecipitationIntensityKey] floatValue];
    self.precipitationProbability = [dictionary[FIOMinuteDataPointPrecipitationProbabilityKey] floatValue];
}

@end
