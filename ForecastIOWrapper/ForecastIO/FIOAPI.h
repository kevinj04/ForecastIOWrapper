//
//  FIOAPI.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const FIOAPIWeatherKey;

@class FIOWeather;

@interface FIOAPI : NSObject

+ (void)setForecastIOKey:(NSString *)key;
+ (void)requestWeatherForLocation:(CGPoint)geolocation;

@end
