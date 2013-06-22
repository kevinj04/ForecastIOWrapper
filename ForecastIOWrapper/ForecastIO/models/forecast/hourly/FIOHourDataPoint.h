//
//  FIOCurrentWeather.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const FIOHourDataPointSummaryKey;
extern NSString *const FIOHourDataPointIconKey;
extern NSString *const FIOHourDataPointTimeKey;
extern NSString *const FIOHourDataPointPrecipIntensityKey;
extern NSString *const FIOHourDataPointTemperatureKey;
extern NSString *const FIOHourDataPointDewPointKey;
extern NSString *const FIOHourDataPointWindSpeedKey;
extern NSString *const FIOHourDataPointWindBearingKey;
extern NSString *const FIOHourDataPointCloudCoverKey;
extern NSString *const FIOHourDataPointHumidityKey;
extern NSString *const FIOHourDataPointPressureKey;
extern NSString *const FIOHourDataPointVisibilityKey;
extern NSString *const FIOHourDataPointOzoneKey;

@interface FIOHourDataPoint : NSObject

@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSDate *time;
@property (assign, nonatomic) CGFloat precipitationIntensity;
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
