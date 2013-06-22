//
//  FIODataPoint.m
//  ForecastIOWrapper
//
//  Created by Kevin Jenkins on 6/22/13.
//  Copyright (c) 2013 somethingPointless. All rights reserved.
//

#import "FIOForecastDataPoint.h"

@implementation FIOForecastDataPoint

- (id)initWithDictionary:(NSDictionary *)dictionary{

    if (dictionary == nil) { return nil; }

    self = [super init];
    if (self) { [self updateWithDictionary:dictionary]; }
    return self;
}

+ (id)pointWithDictionary:(NSDictionary *)dictionary {
    return [[FIOForecastDataPoint alloc] initWithDictionary:dictionary];
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
}

@end
