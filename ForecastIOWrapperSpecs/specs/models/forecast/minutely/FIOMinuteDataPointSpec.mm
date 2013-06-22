#import "FIOMinuteDataPoint.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(FIOMinuteDataPointSpec)

describe(@"FIOMinuteDataPoint", ^{
    __block FIOMinuteDataPoint *dataPoint;

    beforeEach(^{

    });

    describe(@"initWithDictionary:", ^{
        __block NSDictionary *dictionary;
        subjectAction(^{
            dataPoint = [[FIOMinuteDataPoint alloc] initWithDictionary:dictionary];
        });

        describe(@"with a dictionary", ^{

            describe(@"that is nil", ^{
                it(@"should not initialize and return nil", ^{
                    dataPoint == nil should be_truthy;
                });
            });

            describe(@"with a time entry", ^{
                __block NSTimeInterval time;
                beforeEach(^{
                    time = floor([[NSDate date] timeIntervalSince1970]);
                    NSString *dateAsTimeSinceString = [NSString stringWithFormat:@"%0.0f",time];
                    dictionary = @{FIOMinuteDataPointTimeKey:dateAsTimeSinceString};
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

            describe(@"with a precipitation intensity entry", ^{
                __block CGFloat precipitationValue;
                beforeEach(^{
                    precipitationValue = 1.43353;
                    dictionary = @{FIOMinuteDataPointPrecipitationIntensityKey:[NSString stringWithFormat:@"%f", precipitationValue]};
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
        });
    });
});

SPEC_END
