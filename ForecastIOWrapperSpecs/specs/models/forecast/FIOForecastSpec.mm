#import "FIOForecast.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIOForecastSpec)

describe(@"FIOForecast", ^{
    __block FIOForecast *forecast;
    __block NSDictionary *dictionary;

    describe(@"initWithDictionary:", ^{

        subjectAction(^{
            forecast = [FIOForecast forecastWithDictionary:dictionary];
        });

        describe(@"with a nil dictionary", ^{
            it(@"should return nil", ^{
                forecast == nil should be_truthy;
            });
        });
    });
});

SPEC_END
