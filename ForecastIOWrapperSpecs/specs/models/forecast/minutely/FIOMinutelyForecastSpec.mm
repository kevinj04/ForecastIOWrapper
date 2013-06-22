#import "FIOMinutelyForecast.h"
#import "FIOMinuteDataPoint.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIOMinutelyForecastSpec)

describe(@"FIOMinutelyForecast", ^{
    __block FIOMinutelyForecast *forecast;
    __block NSDictionary *dictionary;

    describe(@"updateDataPointsWithArray:", ^{
        subjectAction(^{
            forecast = [FIOMinutelyForecast forecastWithDictionary:dictionary];
        });
        describe(@"with a dictionary with a data points entry", ^{
            beforeEach(^{
                dictionary = @{FIOForecastDataKey:@[@{},@{}]};
            });
            it(@"should create two entries", ^{
                forecast.dataPoints.count should equal([dictionary[FIOForecastDataKey] count]);
            });
            it(@"should create entries of type FIOMinuteDataPoint", ^{
                [forecast.dataPoints[0] isKindOfClass:[FIOMinuteDataPoint class]] should be_truthy;
            });
        });
    });
});

SPEC_END
