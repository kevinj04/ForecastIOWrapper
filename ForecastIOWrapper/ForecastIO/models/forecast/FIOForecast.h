//
//  FIOForecast.h
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const FIOForecastSummaryKey;
extern NSString *const FIOForecastIconKey;
extern NSString *const FIOForecastDataKey;

@interface FIOForecast : NSObject

@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic) NSArray *dataPoints;

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (id)forecastWithDictionary:(NSDictionary *)dictionary;
- (void)updateWithDictionary:(NSDictionary *)dictionary;

/* DataPoints are specific to the type of forecast, this method must be overridden */
- (void)updateDataPointsWithArray:(NSArray *)array;

@end
