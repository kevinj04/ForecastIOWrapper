#import "FIOHourlyForecast.h"
#import "FIOHourDataPoint.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIOHourlyForecastSpec)

describe(@"FIOHourlyForecast", ^{
    __block FIOHourlyForecast *forecast;
    __block NSDictionary *dictionary;

    describe(@"updateDataPointsWithArray:", ^{
        subjectAction(^{
            forecast = [FIOHourlyForecast forecastWithDictionary:dictionary];
        });
        describe(@"with a dictionary with a data points entry", ^{
            beforeEach(^{
                dictionary = @{FIOForecastDataKey:@[@{},@{}]};
            });
            it(@"should create two entries", ^{
                forecast.dataPoints.count should equal([dictionary[FIOForecastDataKey] count]);
            });
            it(@"should create entries of type FIOMinuteDataPoint", ^{
                [forecast.dataPoints[0] isKindOfClass:[FIOHourDataPoint class]] should be_truthy;
            });
        });
    });

    beforeEach(^{

    });
});

SPEC_END
