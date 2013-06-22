//
//  FIOCurrentWeather.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOHourDataPoint.h"

NSString *const ForecastIOSummaryKey = @"summary";
NSString *const ForecastIOIconKey = @"icon";
NSString *const ForecastIOTimeKey = @"time";
NSString *const ForecastIOPrecipIntensityKey = @"precipIntensity";
NSString *const ForecastIOTemperatureKey = @"temperature";
NSString *const ForecastIODewPointKey = @"dewPoint";
NSString *const ForecastIOWindSpeedKey = @"windSpeed";
NSString *const ForecastIOWindBearingKey = @"windBearing";
NSString *const ForecastIOCloudCoverKey = @"cloudCover";
NSString *const ForecastIOHumidityKey = @"humidity";
NSString *const ForecastIOPressureKey = @"pressure";
NSString *const ForecastIOVisibilityKey = @"visibility";
NSString *const ForecastIOOzoneKey = @"ozone";

@implementation FIOHourDataPoint

#pragma mark - Initialization
- (id)init {

    self = [[self class] init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [FIOHourDataPoint init];
    [self updateWithDictionary:dictionary];
    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    if ([dictionary objectForKey:ForecastIOSummaryKey]) {
        self.summary = [dictionary objectForKey:ForecastIOSummaryKey];
    }

    if ([dictionary objectForKey:ForecastIOIconKey]) {
        self.icon = [dictionary objectForKey:ForecastIOIconKey];
    }

    if ([dictionary objectForKey:ForecastIOTimeKey]) {
        self.time = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:ForecastIOTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:ForecastIOPrecipIntensityKey]) {
        self.precipIntensity = [[dictionary objectForKey:ForecastIOPrecipIntensityKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOTemperatureKey]) {
        self.temperature = [[dictionary objectForKey:ForecastIOTemperatureKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIODewPointKey]) {
        self.dewPoint = [[dictionary objectForKey:ForecastIODewPointKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOWindSpeedKey]) {
        self.windSpeed = [[dictionary objectForKey:ForecastIOWindSpeedKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOWindBearingKey]) {
        self.windBearing = [[dictionary objectForKey:ForecastIOWindBearingKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOCloudCoverKey]) {
        self.cloudCover = [[dictionary objectForKey:ForecastIOCloudCoverKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOHumidityKey]) {
        self.humidity = [[dictionary objectForKey:ForecastIOHumidityKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOPressureKey]) {
        self.pressure = [[dictionary objectForKey:ForecastIOPressureKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOVisibilityKey]) {
        self.visibility = [[dictionary objectForKey:ForecastIOVisibilityKey] floatValue];
    }

    if ([dictionary objectForKey:ForecastIOOzoneKey]) {
        self.ozone = [[dictionary objectForKey:ForecastIOOzoneKey] floatValue];
    }
}

@end
