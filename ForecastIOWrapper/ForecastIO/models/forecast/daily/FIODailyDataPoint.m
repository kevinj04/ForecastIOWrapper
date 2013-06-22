//
//  FIODailyDataPoint.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIODailyDataPoint.h"

NSString *const FIODailyDataPointSummaryKey = @"summary";
NSString *const FIODailyDataPointIconKey = @"icon";
NSString *const FIODailyDataPointTimeKey = @"time";
NSString *const FIODailyDataPointSunriseTimeKey = @"sunriseTime";
NSString *const FIODailyDataPointSunsetTimeKey = @"sunsetTime";
NSString *const FIODailyDataPointPrecipIntensityKey = @"precipIntensity";
NSString *const FIODailyDataPointPrecipIntensityMaxKey = @"precipIntensityMax";
NSString *const FIODailyDataPointTemperatureMinKey = @"temperatureMin";
NSString *const FIODailyDataPointTemperatureMinTimeKey = @"temperatureMinTime";
NSString *const FIODailyDataPointTemperatureMaxKey = @"temperatureMax";
NSString *const FIODailyDataPointTemperatureMaxTimeKey = @"temperatureMaxTime";
NSString *const FIODailyDataPointDewPointKey = @"dewPoint";
NSString *const FIODailyDataPointWindSpeedKey = @"windSpeed";
NSString *const FIODailyDataPointWindBearingKey = @"windBearing";
NSString *const FIODailyDataPointCloudCoverKey = @"cloudCover";
NSString *const FIODailyDataPointHumidityKey = @"humidity";
NSString *const FIODailyDataPointPressureKey = @"pressure";
NSString *const FIODailyDataPointOzoneKey = @"ozone";

@implementation FIODailyDataPoint

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

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.summary = dictionary[FIODailyDataPointSummaryKey];
    self.icon = dictionary[FIODailyDataPointIconKey];
    self.time = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIODailyDataPointTimeKey] integerValue]];
    self.sunriseTime = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIODailyDataPointSunriseTimeKey] integerValue]];
    self.sunsetTime = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIODailyDataPointSunsetTimeKey] integerValue]];
    self.precipitationIntensity = [dictionary[FIODailyDataPointPrecipIntensityKey] floatValue];
    self.precipitationIntensityMax = [dictionary[FIODailyDataPointPrecipIntensityMaxKey] floatValue];
    self.temperatureMin = [dictionary[FIODailyDataPointTemperatureMinKey] floatValue];
    self.temperatureMinTime = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIODailyDataPointTemperatureMinTimeKey] integerValue]];
    self.temperatureMax = [dictionary[FIODailyDataPointTemperatureMaxKey] floatValue];
    self.temperatureMaxTime = [NSDate dateWithTimeIntervalSince1970:[dictionary[FIODailyDataPointTemperatureMaxTimeKey] integerValue]];
    self.dewPoint = [dictionary[FIODailyDataPointDewPointKey] floatValue];
    self.windSpeed = [dictionary[FIODailyDataPointWindSpeedKey] floatValue];
    self.windBearing = [dictionary[FIODailyDataPointWindBearingKey] floatValue];
    self.cloudCover = [dictionary[FIODailyDataPointCloudCoverKey] floatValue];
    self.humidity = [dictionary[FIODailyDataPointHumidityKey] floatValue];
    self.pressure = [dictionary[FIODailyDataPointPressureKey] floatValue];
    self.ozone = [dictionary[FIODailyDataPointOzoneKey] floatValue];
}

@end
