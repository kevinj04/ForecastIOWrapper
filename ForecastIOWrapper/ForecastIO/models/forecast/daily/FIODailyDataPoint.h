//
//  FIODailyDataPoint.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FIODailyDataPoint : NSObject

@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSDate *time;
@property (strong, nonatomic) NSDate *sunriseTime;
@property (strong, nonatomic) NSDate *sunsetTime;
@property (assign, nonatomic) CGFloat precipIntensity;
@property (assign, nonatomic) CGFloat precipIntensityMax;
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
