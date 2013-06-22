//
//  FIOCurrentWeather.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const ForecastIOSummaryKey;
extern NSString *const ForecastIOIconKey;
extern NSString *const ForecastIOTimeKey;
extern NSString *const ForecastIOPrecipIntensityKey;
extern NSString *const ForecastIOTemperatureKey;
extern NSString *const ForecastIODewPointKey;
extern NSString *const ForecastIOWindSpeedKey;
extern NSString *const ForecastIOWindBearingKey;
extern NSString *const ForecastIOCloudCoverKey;
extern NSString *const ForecastIOHumidityKey;
extern NSString *const ForecastIOPressureKey;
extern NSString *const ForecastIOVisibilityKey;
extern NSString *const ForecastIOOzoneKey;

@interface FIOHourDataPoint : NSObject

@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSDate *time;
@property (assign, nonatomic) CGFloat precipIntensity;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) CGFloat dewPoint;
@property (assign, nonatomic) CGFloat windSpeed;
@property (assign, nonatomic) CGFloat windBearing;
@property (assign, nonatomic) CGFloat cloudCover;
@property (assign, nonatomic) CGFloat humidity;
@property (assign, nonatomic) CGFloat pressure;
@property (assign, nonatomic) CGFloat visibility;
@property (assign, nonatomic) CGFloat ozone;

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (id)pointWithDictionary:(NSDictionary *)dictionary;
- (void)updateWithDictionary:(NSDictionary *)dictionary;

@end
