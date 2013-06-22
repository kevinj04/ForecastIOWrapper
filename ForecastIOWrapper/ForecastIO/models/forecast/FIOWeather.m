//
//  WBSForecastIOWeatherModel.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/9/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOWeather.h"
#import "FIOMinutelyForecast.h"
#import "FIOHourDataPoint.h"
#import "FIOHourlyForecast.h"
#import "FIODailyForecast.h"

#pragma mark - ForecastIO Keys
NSString *const FIOWeatherCurrentlyKey = @"currently";
NSString *const FIOWeatherMinutelyKey = @"minutely";
NSString *const FIOWeatherHourlyKey = @"hourly";
NSString *const FIOWeatherDailyKey = @"daily";

#pragma mark - Notification Strings
NSString *const FIOWeatherUpdateSuccess = @"FIOWeatherUpdateSuccess";
NSString *const FIOWeatherUpdateInProgress = @"FIOWeatherUpdateInProgress";
NSString *const FIOWeatherUpdateUnknownFailure = @"FIOWeatherUpdateUnknownFailure";
NSString *const FIOWeatherUpdateDownloadFailure = @"FIOWeatherUpdateDownloadFailure";
NSString *const FIOWeatherUpdateJSONParseFailure = @"FIOWeatherUpdateJSONParseFailure";

@implementation FIOWeather

#pragma mark - Initialization
- (id)init {

    self = [[super class] init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    self = [FIOWeather init];

    if (self) { [self updateWithDictionary:dictionary]; }
    
    return self;
}

- (void)updateWithDictionary:(NSDictionary*)dictionary {

    if ([dictionary objectForKey:FIOWeatherCurrentlyKey]) {
        self.currentWeather = [[FIOHourDataPoint alloc] initWithDictionary:[dictionary objectForKey:FIOWeatherCurrentlyKey]];
    }

    if ([dictionary objectForKey:FIOWeatherMinutelyKey]) {
        self.minutelyForecast = [[FIOMinutelyForecast alloc] initWithDictionary:[dictionary objectForKey:FIOWeatherMinutelyKey]];
    }

    if ([dictionary objectForKey:FIOWeatherHourlyKey]) {
        self.hourlyForecast = [[FIOHourlyForecast alloc] initWithDictionary:[dictionary objectForKey:FIOWeatherHourlyKey]];
    }

    if ([dictionary objectForKey:FIOWeatherDailyKey]) {
        self.dailyForecast = [[FIODailyForecast alloc] initWithDictionary:[dictionary objectForKey:FIOWeatherDailyKey]];
    }
}

@end
