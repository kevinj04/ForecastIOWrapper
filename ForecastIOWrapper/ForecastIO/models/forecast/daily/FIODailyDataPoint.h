//
//  FIODailyDataPoint.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const FIODailyDataPointSummaryKey;
extern NSString *const FIODailyDataPointIconKey;
extern NSString *const FIODailyDataPointTimeKey;
extern NSString *const FIODailyDataPointSunriseTimeKey;
extern NSString *const FIODailyDataPointSunsetTimeKey;
extern NSString *const FIODailyDataPointPrecipIntensityKey;
extern NSString *const FIODailyDataPointPrecipIntensityMaxKey;
extern NSString *const FIODailyDataPointTemperatureMinKey;
extern NSString *const FIODailyDataPointTemperatureMinTimeKey;
extern NSString *const FIODailyDataPointTemperatureMaxKey;
extern NSString *const FIODailyDataPointTemperatureMaxTimeKey;
extern NSString *const FIODailyDataPointDewPointKey;
extern NSString *const FIODailyDataPointWindSpeedKey;
extern NSString *const FIODailyDataPointWindBearingKey;
extern NSString *const FIODailyDataPointCloudCoverKey;
extern NSString *const FIODailyDataPointHumidityKey;
extern NSString *const FIODailyDataPointPressureKey;
extern NSString *const FIODailyDataPointOzoneKey;

@interface FIODailyDataPoint : NSObject

@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSDate *time;
@property (strong, nonatomic) NSDate *sunriseTime;
@property (strong, nonatomic) NSDate *sunsetTime;
@property (assign, nonatomic) CGFloat precipitationIntensity;
@property (assign, nonatomic) CGFloat precipitationIntensityMax;
@property (assign, nonatomic) CGFloat temperatureMin;
@property (strong, nonatomic) NSDate *temperatureMinTime;
@property (assign, nonatomic) CGFloat temperatureMax;
@property (strong, nonatomic) NSDate *temperatureMaxTime;
@property (assign, nonatomic) CGFloat dewPoint;
@property (assign, nonatomic) CGFloat windSpeed;
@property (assign, nonatomic) CGFloat windBearing;
@property (assign, nonatomic) CGFloat cloudCover;
@property (assign, nonatomic) CGFloat humidity;
@property (assign, nonatomic) CGFloat pressure;
@property (assign, nonatomic) CGFloat ozone;

- (id)initWithDictionary:(NSDictionary *)dictionary;
- (void)updateWithDictionary:(NSDictionary *)dictionary;

@end
