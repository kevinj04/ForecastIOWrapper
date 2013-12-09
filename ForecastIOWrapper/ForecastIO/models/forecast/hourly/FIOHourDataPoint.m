//
//  FIOCurrentWeather.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOHourDataPoint.h"

NSString *const FIOHourDataPointSummaryKey              = @"summary";
NSString *const FIOHourDataPointIconKey                 = @"icon";
NSString *const FIOHourDataPointTimeKey                 = @"time";
NSString *const FIOHourDataPointPrecipIntensityKey      = @"precipIntensity";
NSString *const FIOHourDataPointPrecipProbabilityKey    = @"precipProbability";
NSString *const FIOHourDataPointTemperatureKey          = @"temperature";
NSString *const FIOHourDataPointDewPointKey             = @"dewPoint";
NSString *const FIOHourDataPointWindSpeedKey            = @"windSpeed";
NSString *const FIOHourDataPointWindBearingKey          = @"windBearing";
NSString *const FIOHourDataPointCloudCoverKey           = @"cloudCover";
NSString *const FIOHourDataPointHumidityKey             = @"humidity";
NSString *const FIOHourDataPointPressureKey             = @"pressure";
NSString *const FIOHourDataPointVisibilityKey           = @"visibility";
NSString *const FIOHourDataPointOzoneKey                = @"ozone";

@implementation FIOHourDataPoint

#pragma mark - Initialization
- (id)init {

    self = [super init];
    return self;
}

+ (id)pointWithDictionary:(NSDictionary *)dictionary {

    return [[FIOHourDataPoint alloc] initWithDictionary:dictionary];
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    self.summary = dictionary[FIOHourDataPointSummaryKey];
    self.icon = dictionary[FIOHourDataPointIconKey];
    self.time = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIOHourDataPointTimeKey] integerValue]];
    self.precipitationIntensity = [dictionary[FIOHourDataPointPrecipIntensityKey] floatValue];
    self.precipitationProbability = [dictionary[FIOHourDataPointPrecipProbabilityKey] floatValue];
    self.temperature = [dictionary[FIOHourDataPointTemperatureKey] floatValue];
    self.dewPoint = [dictionary[FIOHourDataPointDewPointKey] floatValue];
    self.windSpeed = [dictionary[FIOHourDataPointWindSpeedKey] floatValue];
    self.windBearing = [dictionary[FIOHourDataPointWindBearingKey] floatValue];
    self.cloudCover = [dictionary[FIOHourDataPointCloudCoverKey] floatValue];
    self.humidity = [dictionary[FIOHourDataPointHumidityKey] floatValue];
    self.pressure = [dictionary[FIOHourDataPointPressureKey] floatValue];
    self.visibility = [dictionary[FIOHourDataPointVisibilityKey] floatValue];
    self.ozone = [dictionary[FIOHourDataPointOzoneKey] floatValue];
}

@end
