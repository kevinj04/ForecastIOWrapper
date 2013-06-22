#import "FIOWeather.h"


using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIOWeatherSpec)

describe(@"FIOWeather", ^{
    __block FIOWeather *weather;

    __block NSDictionary *dictionary;

    describe(@"initWithDictionary:", ^{
        subjectAction(^{
            weather = [FIOWeather weatherWithDictionary:dictionary];
        });
        describe(@"without a dictionary", ^{
            it(@"should not set any of the forecasts", ^{
                weather.dailyForecast == nil should be_truthy;
                weather.minutelyForecast == nil should be_truthy;
                weather.hourlyForecast == nil should be_truthy;
                weather.currentWeather == nil should be_truthy;
            });
        });
        describe(@"with a dictionary", ^{

            describe(@"with an entry for the current weather", ^{
                beforeEach(^{
                    dictionary = @{FIOWeatherCurrentlyKey:@{}};
                });
                it(@"should create a current forecast", ^{
                    weather.currentWeather == nil should_not be_truthy;
                    [weather.currentWeather isKindOfClass:[FIOHourDataPoint class]] should be_truthy;
                });
            });
            describe(@"with an entry for the minutely weather", ^{
                beforeEach(^{
                    dictionary = @{FIOWeatherMinutelyKey:@{}};
                });
                it(@"should create a minutely forecast", ^{
                    weather.minutelyForecast == nil should_not be_truthy;
                    [weather.minutelyForecast isKindOfClass:[FIOMinutelyForecast class]] should be_truthy;
                });
            });
            describe(@"with an entry for the hourly weather", ^{
                beforeEach(^{
                    dictionary = @{FIOWeatherHourlyKey:@{}};
                });
                it(@"should create a hourly forecast", ^{
                    weather.hourlyForecast == nil should_not be_truthy;
                    [weather.hourlyForecast isKindOfClass:[FIOHourlyForecast class]] should be_truthy;
                });
            });
            describe(@"with an entry for the daily weather", ^{
                beforeEach(^{
                    dictionary = @{FIOWeatherDailyKey:@{}};
                });
                it(@"should create a daily forecast", ^{
                    weather.dailyForecast == nil should_not be_truthy;
                    [weather.dailyForecast isKindOfClass:[FIODailyForecast class]] should be_truthy;
                });
            });
        });
    });
});

SPEC_END
