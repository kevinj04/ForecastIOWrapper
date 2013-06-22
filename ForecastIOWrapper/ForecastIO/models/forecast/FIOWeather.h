//
//  WBSForecastIOWeatherModel.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/9/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

@class FIOHourDataPoint;
@class FIOMinutelyForecast;
@class FIOHourlyForecast;
@class FIODailyForecast;

extern NSString *const FIOWeatherUpdateSuccess;
extern NSString *const FIOWeatherUpdateInProgress;
extern NSString *const FIOWeatherUpdateUnknownFailure;
extern NSString *const FIOWeatherUpdateDownloadFailure;
extern NSString *const FIOWeatherUpdateJSONParseFailure;

// This weather model makes use of forecast.io and the fact that it's free for 1000 requests a day.

@interface FIOWeather : NSObject

@property (strong, nonatomic) FIOHourDataPoint *currentWeather;
@property (strong, nonatomic) FIOMinutelyForecast *minutelyForecast;
@property (strong, nonatomic) FIOHourlyForecast *hourlyForecast;
@property (strong, nonatomic) FIODailyForecast *dailyForecast;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
