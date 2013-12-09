//
//  FIOMinuteDataPoint.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FIOForecastDataPoint.h"

extern NSString *const FIOMinuteDataPointTimeKey;
extern NSString *const FIOMinuteDataPointPrecipitationIntensityKey;
extern NSString *const FIOMinuteDataPointPrecipitationProbabilityKey;

/**
 Data model for the precipitation strength information returned from forecast.io's API.
 */

@interface FIOMinuteDataPoint : FIOForecastDataPoint

@property (strong, nonatomic) NSDate    *time;
@property (assign, nonatomic) CGFloat   precipitationIntensity;
@property (assign, nonatomic) CGFloat   precipitationProbability;

@end
