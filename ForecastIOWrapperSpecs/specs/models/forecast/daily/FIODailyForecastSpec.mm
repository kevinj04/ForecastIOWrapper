#import "FIODailyForecast.h"
#import "FIODailyDataPoint.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIODailyForecastSpec)

describe(@"FIODailyForecast", ^{
    __block FIODailyForecast *forecast;
    __block NSDictionary *dictionary;

    describe(@"updateDataPointsWithArray:", ^{
        subjectAction(^{
            forecast = [FIODailyForecast forecastWithDictionary:dictionary];
        });
        describe(@"with a dictionary with a data points entry", ^{
            beforeEach(^{
                dictionary = @{FIOForecastDataKey:@[@{},@{}]};
            });
            it(@"should create two entries", ^{
                forecast.dataPoints.count should equal([dictionary[FIOForecastDataKey] count]);
            });
            it(@"should create entries of type FIOMinuteDataPoint", ^{
                [forecast.dataPoints[0] isKindOfClass:[FIODailyDataPoint class]] should be_truthy;
            });
        });
    });
});

SPEC_END
