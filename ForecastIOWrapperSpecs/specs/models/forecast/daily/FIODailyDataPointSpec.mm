#import "FIODailyDataPoint.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIODailyDataPointSpec)

describe(@"FIODailyDataPoint", ^{
    __block FIODailyDataPoint *dataPoint;

    beforeEach(^{

    });

    describe(@"initWithDictionary:", ^{
        __block NSDictionary *dictionary;
        subjectAction(^{
            dataPoint = [[FIODailyDataPoint alloc] initWithDictionary:dictionary];
        });

        describe(@"with a dictionary", ^{

            describe(@"that is nil", ^{
                it(@"should not set the summary string", ^{
                    dataPoint.summary == nil should be_truthy;
                });
                it(@"should not set the icon string", ^{
                    dataPoint.icon == nil should be_truthy;
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.time should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
                it(@"should set the sunrise time to 1/1/1970", ^{
                    dataPoint.sunriseTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
                it(@"should set the sunset time to 1/1/1970", ^{
                    dataPoint.sunsetTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
                it(@"should set the temperature max time to 1/1/1970", ^{
                    dataPoint.temperatureMaxTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
                it(@"should set the temperature min time to 1/1/1970", ^{
                    dataPoint.temperatureMinTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
                it(@"should set the precipitation value to 0", ^{
                    dataPoint.precipitationIntensity should equal(0);
                });
                it(@"should set the precipitation max value to 0", ^{
                    dataPoint.precipitationIntensityMax should equal(0);
                });
                it(@"should set the temperature min value to 0", ^{
                    dataPoint.temperatureMin should equal(0);
                });
                it(@"should set the temperature max value to 0", ^{
                    dataPoint.temperatureMax should equal(0);
                });
                it(@"should set the dew point value to 0", ^{
                    dataPoint.dewPoint should equal(0);
                });
                it(@"should set the wind speed value to 0", ^{
                    dataPoint.windSpeed should equal(0);
                });
                it(@"should set the wind bearing value to 0", ^{
                    dataPoint.windBearing should equal(0);
                });
                it(@"should set the cloud cover value to 0", ^{
                    dataPoint.cloudCover should equal(0);
                });
                it(@"should set the humidity value to 0", ^{
                    dataPoint.humidity should equal(0);
                });
                it(@"should set the pressure value to 0", ^{
                    dataPoint.pressure should equal(0);
                });
                it(@"should set the ozone value to 0", ^{
                    dataPoint.ozone should equal(0);
                });
            });

            describe(@"with a summary entry", ^{
                __block NSString *someSummary;
                beforeEach(^{
                    someSummary = @"a summer-y summary";
                    dictionary = @{FIODailyDataPointSummaryKey:someSummary};
                });
                it(@"should set the summary", ^{
                    dataPoint.summary should equal(someSummary);
                });
            });

            describe(@"without a summary entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should not set the summary", ^{
                    dataPoint.summary == nil should be_truthy;
                });
            });

            describe(@"with a icon entry", ^{
                __block NSString *someIconName;
                beforeEach(^{
                    someIconName = @"icon thing";
                    dictionary = @{FIODailyDataPointIconKey:someIconName};
                });
                it(@"should set the icon", ^{
                    dataPoint.icon should equal(someIconName);
                });
            });

            describe(@"without an icon entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should not set the icon", ^{
                    dataPoint.icon == nil should be_truthy;
                });
            });

            describe(@"with a time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIODailyDataPointTimeKey:dateAsTimeSinceString};
                });
                it(@"should set the time", ^{
                    dataPoint.time.timeIntervalSince1970 should equal(time);
                });
            });

            describe(@"without a time entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.time should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
            });

            describe(@"with a sunrise time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIODailyDataPointSunriseTimeKey:dateAsTimeSinceString};
                });
                it(@"should set the time", ^{
                    dataPoint.sunriseTime.timeIntervalSince1970 should equal(time);
                });
            });

            describe(@"without a sunrise time entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.sunriseTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
            });

            describe(@"with a sunset time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIODailyDataPointSunsetTimeKey:dateAsTimeSinceString};
                });
                it(@"should set the time", ^{
                    dataPoint.sunsetTime.timeIntervalSince1970 should equal(time);
                });
            });

            describe(@"without a sunset time entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.sunsetTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
            });

            describe(@"with a min temperature time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIODailyDataPointTemperatureMinTimeKey:dateAsTimeSinceString};
                });
                it(@"should set the time", ^{
                    dataPoint.temperatureMinTime.timeIntervalSince1970 should equal(time);
                });
            });

            describe(@"without a min temperature time entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.temperatureMinTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
            });

            describe(@"with a max temperature time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIODailyDataPointTemperatureMaxTimeKey:dateAsTimeSinceString};
                });
                it(@"should set the time", ^{
                    dataPoint.temperatureMaxTime.timeIntervalSince1970 should equal(time);
                });
            });

            describe(@"without a temperature max time entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the time to 1/1/1970", ^{
                    dataPoint.temperatureMaxTime should equal([NSDate dateWithTimeIntervalSince1970:0]);
                });
            });

            describe(@"with a precipitation intensity entry", ^{
                __block CGFloat precipitationValue;
                beforeEach(^{
                    precipitationValue = 1.43353;
                    dictionary = @{FIODailyDataPointPrecipIntensityKey:[NSString stringWithFormat:@"%f", precipitationValue]};
                });
                it(@"should set the precipitation value", ^{
                    dataPoint.precipitationIntensity should equal(precipitationValue);
                });
            });
            describe(@"without a precipitation intensity entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the precipitation value to 0", ^{
                    dataPoint.precipitationIntensity should equal(0);
                });
            });

            describe(@"with a precipitation intensity max entry", ^{
                __block CGFloat precipitationIntensityMax;
                beforeEach(^{
                    precipitationIntensityMax = 1.43353;
                    dictionary = @{FIODailyDataPointPrecipIntensityMaxKey:[NSString stringWithFormat:@"%f", precipitationIntensityMax]};
                });
                it(@"should set the precipitation max value", ^{
                    dataPoint.precipitationIntensityMax should equal(precipitationIntensityMax);
                });
            });
            describe(@"without a precipitation intensity max entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the precipitation max value to 0", ^{
                    dataPoint.precipitationIntensityMax should equal(0);
                });
            });

            describe(@"with a dew point entry", ^{
                __block CGFloat dewPoint;
                beforeEach(^{
                    dewPoint = 14.43353;
                    dictionary = @{FIODailyDataPointDewPointKey:[NSString stringWithFormat:@"%f", dewPoint]};
                });
                it(@"should set the dew point value", ^{
                    dataPoint.dewPoint should equal(dewPoint);
                });
            });
            describe(@"without a dew point entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the dew point value to 0", ^{
                    dataPoint.dewPoint should equal(0);
                });
            });

            describe(@"with a wind speed entry", ^{
                __block CGFloat windSpeed;
                beforeEach(^{
                    windSpeed = 14.43353;
                    dictionary = @{FIODailyDataPointWindSpeedKey:[NSString stringWithFormat:@"%f", windSpeed]};
                });
                it(@"should set the wind speed value", ^{
                    dataPoint.windSpeed should equal(windSpeed);
                });
            });
            describe(@"without a wind speed entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the wind speed value to 0", ^{
                    dataPoint.windSpeed should equal(0);
                });
            });

            describe(@"with a wind bearing entry", ^{
                __block CGFloat windBearing;
                beforeEach(^{
                    windBearing = 14.43353;
                    dictionary = @{FIODailyDataPointWindBearingKey:[NSString stringWithFormat:@"%f", windBearing]};
                });
                it(@"should set the wind bearing value", ^{
                    dataPoint.windBearing should equal(windBearing);
                });
            });
            describe(@"without a wind bearing entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the wind bearing value to 0", ^{
                    dataPoint.windBearing should equal(0);
                });
            });

            describe(@"with a cloud cover entry", ^{
                __block CGFloat cloudCover;
                beforeEach(^{
                    cloudCover = 14.43353;
                    dictionary = @{FIODailyDataPointCloudCoverKey:[NSString stringWithFormat:@"%f", cloudCover]};
                });
                it(@"should set the cloud cover value", ^{
                    dataPoint.cloudCover should equal(cloudCover);
                });
            });
            describe(@"without a cloud cover entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the cloud cover value to 0", ^{
                    dataPoint.cloudCover should equal(0);
                });
            });

            describe(@"with a humidity entry", ^{
                __block CGFloat humidity;
                beforeEach(^{
                    humidity = 14.43353;
                    dictionary = @{FIODailyDataPointHumidityKey:[NSString stringWithFormat:@"%f", humidity]};
                });
                it(@"should set the humidity value", ^{
                    dataPoint.humidity should equal(humidity);
                });
            });
            describe(@"without a humidity entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the humidity value to 0", ^{
                    dataPoint.humidity should equal(0);
                });
            });

            describe(@"with a pressure entry", ^{
                __block CGFloat pressure;
                beforeEach(^{
                    pressure = 14.43353;
                    dictionary = @{FIODailyDataPointPressureKey:[NSString stringWithFormat:@"%f", pressure]};
                });
                it(@"should set the pressure value", ^{
                    dataPoint.pressure should equal(pressure);
                });
            });
            describe(@"without a pressure entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the pressure value to 0", ^{
                    dataPoint.pressure should equal(0);
                });
            });

            describe(@"with a ozone entry", ^{
                __block CGFloat ozone;
                beforeEach(^{
                    ozone = 14.43353;
                    dictionary = @{FIODailyDataPointOzoneKey:[NSString stringWithFormat:@"%f", ozone]};
                });
                it(@"should set the ozone value", ^{
                    dataPoint.ozone should equal(ozone);
                });
            });
            describe(@"without a ozone entry", ^{
                beforeEach(^{
                    dictionary = @{};
                });
                it(@"should set the pressure value to 0", ^{
                    dataPoint.ozone should equal(0);
                });
            });
        });
    });

});

SPEC_END
