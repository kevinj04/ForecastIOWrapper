//
//  FIOAPI.m
//  FIOWrapper
//
//  Created by Kevin Jenkins on 6/15/13.
//  Copyright (c) 2013 somethingPointless All rights reserved.
//

#import "FIOAPI.h"
#import "FIOWeather.h"

static NSString *forecastIOKey;

NSString *const forecastIOURL = @"https://api.forecast.io/forecast";
NSString *const FIOAPIWeatherKey = @"weather";

@implementation FIOAPI

#pragma mark - Endpoint Helpers
+ (void)setForecastIOKey:(NSString *)key {
    forecastIOKey = key;
}

+ (NSURL *)forecastIOEndpointForPoint:(CGPoint)geolocation {

    NSString *urlString = [NSString stringWithFormat:@"%@/%@/%2.2f,%2.2f", forecastIOURL, forecastIOKey, geolocation.x, geolocation.y];
    return [NSURL URLWithString:urlString];
}

+ (NSURLRequest *)forecastIOReportForPoint:(CGPoint)geolocation {

    NSURL *url = [FIOAPI forecastIOEndpointForPoint:geolocation];
    return [NSURLRequest requestWithURL:url cachePolicy:NSURLCacheStorageAllowedInMemoryOnly timeoutInterval:15];
    
}

#pragma mark - Weather Access
+ (void)requestWeatherForLocation:(CGPoint)geolocation {

    NSURLRequest *request = [FIOAPI forecastIOReportForPoint:geolocation];

    [[NSNotificationCenter defaultCenter] postNotificationName:FIOWeatherUpdateInProgress object:self userInfo:nil];

    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:
     ^(NSURLResponse *response, NSData *data, NSError *error) {

         if (![response isKindOfClass:[NSHTTPURLResponse class]] || [data length] == 0) {
             [[NSNotificationCenter defaultCenter] postNotificationName:FIOWeatherUpdateUnknownFailure object:self userInfo:nil];
             return;
         }

         NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;

         // if there was an error...
         if (error || httpResponse.statusCode != 200) {
             [[NSNotificationCenter defaultCenter] postNotificationName:FIOWeatherUpdateDownloadFailure object:self userInfo:@{@"urlResponse":httpResponse, @"error":error}];
             return;
         }

         NSError *jsonError;
         NSDictionary *jsonData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];

         if (jsonError) {
             [[NSNotificationCenter defaultCenter] postNotificationName:FIOWeatherUpdateJSONParseFailure object:self userInfo:@{@"error":jsonError}];
             return;
         }

         FIOWeather *weather = [[FIOWeather alloc] initWithDictionary:jsonData];

         [[NSNotificationCenter defaultCenter] postNotificationName:FIOWeatherUpdateSuccess object:self userInfo:@{FIOAPIWeatherKey:weather}];
     }];
}



@end
