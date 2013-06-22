//
//  FIODailyDataPoint.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIODailyDataPoint.h"

NSString *const FIODailySummaryKey = @"summary";
NSString *const FIODailyIconKey = @"icon";
NSString *const FIODailyTimeKey = @"time";
NSString *const FIODailySunriseTimeKey = @"sunriseTime";
NSString *const FIODailySunsetTimeKey = @"sunsetTime";
NSString *const FIODailyPrecipIntensityKey = @"precipIntensity";
NSString *const FIODailyPrecipIntensityMaxKey = @"precipIntensityMax";
NSString *const FIODailyTemperatureMinKey = @"temperatureMin";
NSString *const FIODailyTemperatureMinTimeKey = @"temperatureMinTime";
NSString *const FIODailyTemperatureMaxKey = @"temperatureMax";
NSString *const FIODailyTemperatureMaxTimeKey = @"temperatureMaxTime";
NSString *const FIODailyDewPointKey = @"dewPoint";
NSString *const FIODailyWindSpeedKey = @"windSpeed";
NSString *const FIODailyWindBearingKey = @"windBearing";
NSString *const FIODailyCloudCoverKey = @"cloudCover";
NSString *const FIODailyHumidityKey = @"humidity";
NSString *const FIODailyPressureKey = @"pressure";
NSString *const FIODailyOzoneKey = @"ozone";

@implementation FIODailyDataPoint

#pragma mark - Initialization
- (id)init {

    self = [[super class] init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [FIODailyDataPoint init];

    if (self) { [self updateWithDictionary:dictionary]; }

    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    if ([dictionary objectForKey:FIODailySummaryKey]) {
        self.summary = [dictionary objectForKey:FIODailySummaryKey];
    }

    if ([dictionary objectForKey:FIODailyIconKey]) {
        self.icon = [dictionary objectForKey:FIODailyIconKey];
    }

    if ([dictionary objectForKey:FIODailyTimeKey]) {
        self.time = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIODailyTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIODailySunriseTimeKey]) {
        self.sunriseTime = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIODailySunriseTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIODailySunsetTimeKey]) {
        self.sunsetTime = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIODailySunsetTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIODailyPrecipIntensityKey]) {
        self.precipIntensity = [[dictionary objectForKey:FIODailyPrecipIntensityKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyPrecipIntensityMaxKey]) {
        self.precipIntensityMax = [[dictionary objectForKey:FIODailyPrecipIntensityMaxKey] floatValue];
    }
    
    if ([dictionary objectForKey:FIODailyTemperatureMinKey]) {
        self.temperatureMin = [[dictionary objectForKey:FIODailyTemperatureMinKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyTemperatureMinTimeKey]) {
        self.temperatureMinTime = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIODailyTemperatureMinTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIODailyTemperatureMaxKey]) {
        self.temperatureMax = [[dictionary objectForKey:FIODailyTemperatureMaxKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyTemperatureMaxTimeKey]) {
        self.temperatureMaxTime = [NSDate dateWithTimeIntervalSince1970:[[dictionary objectForKey:FIODailyTemperatureMaxTimeKey] integerValue]];
    }

    if ([dictionary objectForKey:FIODailyDewPointKey]) {
        self.dewPoint = [[dictionary objectForKey:FIODailyDewPointKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyWindSpeedKey]) {
        self.windSpeed = [[dictionary objectForKey:FIODailyWindSpeedKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyWindBearingKey]) {
        self.windBearing = [[dictionary objectForKey:FIODailyWindBearingKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyCloudCoverKey]) {
        self.cloudCover = [[dictionary objectForKey:FIODailyCloudCoverKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyHumidityKey]) {
        self.humidity = [[dictionary objectForKey:FIODailyHumidityKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyPressureKey]) {
        self.pressure = [[dictionary objectForKey:FIODailyPressureKey] floatValue];
    }

    if ([dictionary objectForKey:FIODailyOzoneKey]) {
        self.ozone = [[dictionary objectForKey:FIODailyOzoneKey] floatValue];
    }

}

@end
