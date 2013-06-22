//
//  FIODataPoint.h
//  ForecastIOWrapper
//
//  Created by Kevin Jenkins on 6/22/13.
//  Copyright (c) 2013 somethingPointless. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FIOForecastDataPoint : NSObject

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (id)pointWithDictionary:(NSDictionary *)dictionary;
- (void)updateWithDictionary:(NSDictionary *)dictionary;

@end
