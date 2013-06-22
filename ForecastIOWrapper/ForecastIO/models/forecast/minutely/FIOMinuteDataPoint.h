//
//  FIOMinuteDataPoint.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const FIOMinuteDataPointTimeKey;
extern NSString *const FIOMinuteDataPointPrecipitationIntensityKey;

/**
 Data model for the precipitation strength information returned from forecast.io's API.
 */

@interface FIOMinuteDataPoint : NSObject

@property (strong, nonatomic) NSDate *time;
@property (assign, nonatomic) CGFloat precipitationIntensity;

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (id)pointWithDictionary:(NSDictionary *)dictionary;
- (void)updateWithDictionary:(NSDictionary *)dictionary;

@end
