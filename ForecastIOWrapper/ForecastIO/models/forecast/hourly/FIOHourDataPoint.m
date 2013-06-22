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

+ (id)pointWithDictionary:(NSDictionary *)dictionary {

    return [[FIOHourDataPoint alloc] initWithDictionary:dictionary];
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [FIOHourDataPoint init];
    [self updateWithDictionary:dictionary];
    return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {

    self.summary = dictionary[ForecastIOSummaryKey];
    self.icon = dictionary[ForecastIOIconKey];
    self.time = [NSDate dateWithTimeIntervalSince1970:[dictionary[ForecastIOTimeKey] integerValue]];
    self.precipIntensity = [dictionary[ForecastIOPrecipIntensityKey] floatValue];
    self.temperature = [dictionary[ForecastIOTemperatureKey] floatValue];
    self.dewPoint = [dictionary[ForecastIODewPointKey] floatValue];
    self.windSpeed = [dictionary[ForecastIOWindSpeedKey] floatValue];
    self.windBearing = [dictionary[ForecastIOWindBearingKey] floatValue];
    self.cloudCover = [dictionary[ForecastIOCloudCoverKey] floatValue];
    self.humidity = [dictionary[ForecastIOHumidityKey] floatValue];
    self.pressure = [dictionary[ForecastIOPressureKey] floatValue];
    self.visibility = [dictionary[ForecastIOVisibilityKey] floatValue];
    self.ozone = [dictionary[ForecastIOOzoneKey] floatValue];
}

@end
