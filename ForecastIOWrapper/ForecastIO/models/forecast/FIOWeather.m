//
//  FIOWeatherg.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/9/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOWeather.h"

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

    self = [super init];
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary {

    if (dictionary == nil) { return nil; }

    self = [self init];
    if (self) { [self updateWithDictionary:dictionary]; }
    return self;
}

+ (id)weatherWithDictionary:(NSDictionary *)dictionary {

    return [[FIOWeather alloc] initWithDictionary:dictionary];
}

- (void)updateWithDictionary:(NSDictionary*)dictionary {

    self.currentWeather = [FIOHourDataPoint pointWithDictionary:dictionary[FIOWeatherCurrentlyKey]];
    self.minutelyForecast = [FIOMinutelyForecast forecastWithDictionary:dictionary[FIOWeatherMinutelyKey]];
    self.hourlyForecast = [FIOHourlyForecast forecastWithDictionary:dictionary[FIOWeatherHourlyKey]];
    self.dailyForecast = [FIODailyForecast forecastWithDictionary:dictionary[FIOWeatherDailyKey]] ;
}

@end
